<script setup lang="ts">
import type { IndexData, RobotData } from '../types'
import { computed, onMounted, ref, watch } from 'vue'
import { useRouter } from 'vue-router'
import { loadIndex, loadRobot } from '../lib/data'
import { statusBadge, statusLabel } from '../lib/format'

const router = useRouter()
const index = ref<IndexData>()
const a = ref('r1')
const b = ref('r2')
const robotA = ref<RobotData>()
const robotB = ref<RobotData>()
const error = ref('')
const loading = ref(false)

onMounted(async () => {
  try {
    index.value = await loadIndex()
  }
  catch (e) {
    error.value = String(e)
  }
})

const options = computed(() => index.value?.robots ?? [])

const common = computed(() => {
  const A = robotA.value
  const B = robotB.value
  if (!A || !B)
    return []
  const bMap = new Map(B.programs.map(p => [p.file, p]))
  return A.programs
    .filter(p => bMap.has(p.file) && (p.new?.converted || p.old?.converted))
    .map((p) => {
      const other = bMap.get(p.file)!
      return {
        id: p.id,
        file: p.file,
        statusA: p.status,
        statusB: other.status,
        changedA: p.status !== 'same',
        changedB: other.status !== 'same',
      }
    })
    .sort((x, y) => Number(y.changedA || y.changedB) - Number(x.changedA || x.changedB) || x.id.localeCompare(y.id, undefined, { numeric: true }))
})

watch([a, b], async () => {
  loading.value = true
  robotA.value = undefined
  robotB.value = undefined
  try {
    const [ra, rb] = await Promise.all([loadRobot(a.value), loadRobot(b.value)])
    robotA.value = ra
    robotB.value = rb
  }
  catch (e) {
    error.value = String(e)
  }
  finally {
    loading.value = false
  }
}, { immediate: true })

function go(file = 'style21.tp') {
  router.push({ path: `/diff/${a.value}`, query: { mode: 'cross', b: b.value, f: file } })
}

function swap() {
  const t = a.value
  a.value = b.value
  b.value = t
}
</script>

<template>
  <div class="max-w-[1120px] mx-auto pt-10 sm:pt-14">
    <section class="relative">
      <span class="bg-title font-mono">CROSS</span>
      <p class="text-xs op-50 font-mono">
        同名程序 · 两台机器人 · 同一时期
      </p>
      <h1 class="text-4xl sm:text-5xl font-800 mt-2 mb-0 tracking-tight">
        跨机器人对照
      </h1>
      <div class="prose mt-5">
        <p>
          同一个工位的两台机器人往往共享同一套 STYLE / 焊接 / 修磨程序。
          选两台机器人，先看它们有哪些同名程序，再进入逐行对比，快速发现复制之后改漏、或者只在一台机器人上做过的调整。
        </p>
      </div>
    </section>

    <div class="grid sm:grid-cols-[1fr_auto_1fr] gap-3 items-end mt-8">
      <div>
        <div class="mono-label mb-1.5">
          机器人 A
        </div>
        <select v-model="a" class="w-full px-3 py-2 rounded-lg border border-base bg-transparent font-mono text-sm">
          <option v-for="r in options" :key="r.id" :value="r.id">
            {{ r.label }} · {{ r.group }} · {{ r.ops.length ? r.ops.map(o => `OP${o}`).join('/') : '—' }}
          </option>
        </select>
      </div>
      <button class="icon-btn border border-base rounded-lg h-10 w-10 mb-0.5" title="交换" @click="swap">
        <span class="i-carbon-arrows-horizontal" />
      </button>
      <div>
        <div class="mono-label mb-1.5">
          机器人 B
        </div>
        <select v-model="b" class="w-full px-3 py-2 rounded-lg border border-base bg-transparent font-mono text-sm">
          <option v-for="r in options" :key="r.id" :value="r.id">
            {{ r.label }} · {{ r.group }} · {{ r.ops.length ? r.ops.map(o => `OP${o}`).join('/') : '—' }}
          </option>
        </select>
      </div>
    </div>

    <div class="flex flex-wrap items-center gap-3 mt-4">
      <button class="px-4 py-2 rounded-md bg-[var(--c-fg)] text-[var(--c-bg)] text-sm font-500 hover:op-90 transition" @click="go()">
        开始对比 <span class="i-carbon-arrow-right ml-1" />
      </button>
      <span class="text-xs op-40">
        {{ a === b ? '请选择两台不同的机器人' : '默认打开 style21，可在对比页切换文件' }}
      </span>
    </div>

    <div v-if="error" class="card text-sm text-rose-500 mt-6">
      {{ error }}
    </div>

    <template v-if="robotA && robotB">
      <div class="grid sm:grid-cols-2 gap-3 mt-10">
        <div class="border border-base rounded-xl p-4">
          <div class="flex items-baseline gap-2">
            <span class="text-3xl font-800 font-mono">{{ robotA.label }}</span>
            <span class="badge badge-mute">{{ robotA.group }}</span>
            <span class="text-xs op-40">{{ robotA.new.date }}</span>
          </div>
          <div class="text-xs op-50 mt-2">
            {{ robotA.roles.join(' / ') }} · {{ robotA.new.programs }} 程序 · {{ robotA.stats.changed }} 文件变更
          </div>
        </div>
        <div class="border border-base rounded-xl p-4">
          <div class="flex items-baseline gap-2">
            <span class="text-3xl font-800 font-mono">{{ robotB.label }}</span>
            <span class="badge badge-mute">{{ robotB.group }}</span>
            <span class="text-xs op-40">{{ robotB.new.date }}</span>
          </div>
          <div class="text-xs op-50 mt-2">
            {{ robotB.roles.join(' / ') }} · {{ robotB.new.programs }} 程序 · {{ robotB.stats.changed }} 文件变更
          </div>
        </div>
      </div>

      <section class="mt-10">
        <div class="flex items-baseline justify-between mb-3">
          <h2 class="text-lg font-650">
            同名程序 <span class="text-xs op-40 font-normal">{{ common.length }} 个</span>
          </h2>
          <span class="text-xs op-35 hidden sm:inline">点击进入跨机器人逐行对比</span>
        </div>
        <div class="border border-base rounded-lg overflow-hidden">
          <button
            v-for="p in common"
            :key="p.file"
            class="w-full grid grid-cols-[minmax(0,1fr)_auto] sm:grid-cols-[minmax(0,1fr)_6rem_6rem] gap-3 items-center px-3 sm:px-4 py-2 border-b border-gray/8 last:border-b-0 hover:bg-gray/5 transition text-left text-xs"
            @click="go(p.file)"
          >
            <div class="flex items-center gap-2 min-w-0">
              <span class="font-mono truncate">{{ p.id }}</span>
              <span class="text-[10px] op-30 truncate hidden sm:inline">{{ p.file }}</span>
            </div>
            <div class="hidden sm:flex justify-end">
              <span class="badge" :class="statusBadge(p.statusA)">{{ robotA.label }} · {{ statusLabel(p.statusA) }}</span>
            </div>
            <div class="hidden sm:flex justify-end">
              <span class="badge" :class="statusBadge(p.statusB)">{{ robotB.label }} · {{ statusLabel(p.statusB) }}</span>
            </div>
            <div class="sm:hidden text-right op-30">
              <span class="i-carbon-arrow-up-right" />
            </div>
          </button>
        </div>
        <div v-if="!common.length" class="py-12 text-center op-40 text-sm">
          这两台机器人没有可对比的同名程序
        </div>
      </section>
    </template>

    <div v-else-if="loading" class="space-y-4 mt-10">
      <div class="skeleton h-24 w-full" />
      <div class="skeleton h-64 w-full" />
    </div>
  </div>
</template>
