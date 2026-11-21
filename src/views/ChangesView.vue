<script setup lang="ts">
import type { ChangeEntry, ChangesData, IndexData } from '../types'
import { computed, onMounted, ref, watch } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { loadChanges, loadIndex } from '../lib/data'
import { dateLabel, diffHref, fmtSize, programHref, statusBadge, statusLabel } from '../lib/format'

const route = useRoute()
const router = useRouter()
const data = ref<ChangesData>()
const index = ref<IndexData>()
const error = ref('')
const query = ref('')
const robotFilter = ref(String(route.query.robot ?? 'all'))
const initialType = String(route.query.type ?? '')
const typeFilter = ref<'all' | 'program' | 'config' | 'log'>(initialType === 'program' || initialType === 'config' || initialType === 'log' ? initialType : 'all')
const statusFilter = ref<'all' | 'logic' | 'position' | 'comment' | 'config'>('all')

watch(typeFilter, (v) => {
  router.replace({ query: { ...route.query, type: v === 'program' ? undefined : v } })
})

onMounted(async () => {
  try {
    [data.value, index.value] = await Promise.all([loadChanges(), loadIndex()])
  }
  catch (e) {
    error.value = String(e)
  }
})

function setRobot(id: string) {
  robotFilter.value = id
  router.replace({ query: { ...route.query, robot: id === 'all' ? undefined : id } })
}

const robots = computed(() => data.value?.changes
  .map(c => ({ id: c.robot, label: c.robotLabel }))
  .filter((r, i, a) => a.findIndex(x => x.id === r.id) === i)
  .sort((a, b) => Number(a.id.slice(1)) - Number(b.id.slice(1))) ?? [])

function typeOf(c: ChangeEntry) {
  if (c.kind === 'program')
    return 'program'
  if (c.kind === 'text')
    return c.ext === '.ls' ? 'log' : 'config'
  return 'config'
}

const filtered = computed(() => {
  const q = query.value.trim().toLowerCase()
  return (data.value?.changes ?? []).filter((c) => {
    if (robotFilter.value !== 'all' && c.robot !== robotFilter.value)
      return false
    if (typeFilter.value !== 'all' && typeOf(c) !== typeFilter.value)
      return false
    if (statusFilter.value === 'logic' && c.status !== 'code')
      return false
    if (statusFilter.value === 'position' && c.status !== 'position')
      return false
    if (statusFilter.value === 'comment' && !['comment', 'meta'].includes(c.status))
      return false
    if (statusFilter.value === 'config' && c.kind === 'program')
      return false
    return !q || c.path.toLowerCase().includes(q) || c.robotLabel.toLowerCase().includes(q)
  })
})

const groups = computed(() => {
  const map = new Map<string, ChangeEntry[]>()
  for (const c of filtered.value) {
    if (!map.has(c.robot))
      map.set(c.robot, [])
    map.get(c.robot)!.push(c)
  }
  return [...map.entries()].map(([robot, items]) => ({
    robot,
    items,
    summary: data.value?.changes.filter(c => c.robot === robot).length ?? 0,
  })).sort((a, b) => Number(a.robot.slice(1)) - Number(b.robot.slice(1)))
})

const counts = computed(() => {
  const all = data.value?.changes ?? []
  return {
    total: all.length,
    logic: all.filter(c => c.status === 'code').length,
    position: all.filter(c => c.status === 'position').length,
    comment: all.filter(c => ['comment', 'meta'].includes(c.status)).length,
    config: all.filter(c => c.kind !== 'program').length,
    program: all.filter(c => c.kind === 'program').length,
    added: all.filter(c => c.status === 'added').length,
    removed: all.filter(c => c.status === 'removed').length,
    failed: all.filter(c => c.status === 'failed').length,
  }
})

function open(c: ChangeEntry) {
  return c.programId ? programHref(c.robot, 'new', c.programId) : diffHref(c.robot, c.path)
}
</script>

<template>
  <div class="max-w-[1120px] mx-auto pt-10 sm:pt-14">
    <section class="relative slide-enter-content">
      <span class="bg-title font-mono">DIFF</span>
      <p class="text-xs op-50 font-mono">
        {{ index ? `${dateLabel(index.old.date)} → ${dateLabel(index.new.date)}` : '两次备份' }} · {{ index?.totals.robots ?? 10 }} 台机器人
      </p>
      <h1 class="text-4xl sm:text-5xl font-800 mt-2 mb-0 tracking-tight">
        全部变更
      </h1>
      <div class="prose mt-5">
        <p>
          按文件内容哈希比较两次备份。程序文件先转成 <code>.ls</code> 再做语义分类；
          配置与日志文件按 GB18030 解码后逐行比较。二进制配置的“变更”只代表内容不同，具体字段需要回控制器确认。
        </p>
        <p class="text-xs not-prose op-45">
          当前区间共 <strong>{{ counts.total }}</strong> 项：程序 {{ counts.program }} · 配置 / 日志 {{ counts.config }}。
          <button v-if="typeFilter !== 'all'" class="underline hover:op-80" @click="typeFilter = 'all'">查看全部 {{ counts.total }} 项</button>
          <button v-else-if="counts.program" class="underline hover:op-80" @click="typeFilter = 'program'">只看 {{ counts.program }} 个程序变更</button>
        </p>
      </div>
    </section>

    <div v-if="error" class="card text-sm text-rose-500 mt-6">
      {{ error }}
    </div>

    <template v-if="data">
      <div class="grid grid-cols-3 sm:grid-cols-6 gap-y-4 gap-x-3 mt-8 py-5 border-y border-base">
        <div>
          <div class="stat-num">
            {{ counts.total }}
          </div>
          <div class="text-[11px] op-45">
            变更文件
          </div>
        </div>
        <div>
          <div class="stat-num st-chg">
            {{ counts.logic }}
          </div>
          <div class="text-[11px] op-45">
            程序逻辑
          </div>
        </div>
        <div>
          <div class="stat-num st-info">
            {{ counts.position }}
          </div>
          <div class="text-[11px] op-45">
            点位移位
          </div>
        </div>
        <div>
          <div class="stat-num">
            {{ counts.comment }}
          </div>
          <div class="text-[11px] op-45">
            注释 / 时间戳
          </div>
        </div>
        <div>
          <div class="stat-num">
            {{ counts.config }}
          </div>
          <div class="text-[11px] op-45">
            配置 / 日志
          </div>
        </div>
        <div>
          <div class="stat-num">
            {{ counts.added + counts.removed }}
          </div>
          <div class="text-[11px] op-45">
            增删文件
          </div>
        </div>
      </div>

      <!-- filters -->
      <div class="sticky top-16 z-30 bg-[var(--c-bg)]/95 backdrop-blur py-3 -mx-4 px-4 sm:mx-0 sm:px-0 border-b border-base">
        <div class="flex flex-wrap items-center gap-2">
          <label class="flex items-center gap-2 px-2.5 py-1.5 border border-base rounded text-sm focus-within:border-gray/50 transition flex-1 min-w-48 max-w-72">
            <span class="i-carbon-search op-40" />
            <input v-model="query" class="bg-transparent outline-none w-full text-sm" placeholder="搜索文件名…">
          </label>
          <select v-model="typeFilter" class="px-2 py-1.5 rounded border border-base bg-transparent text-xs">
            <option value="all">全部类型</option>
            <option value="program">程序</option>
            <option value="config">配置</option>
            <option value="log">系统日志</option>
          </select>
          <select v-model="statusFilter" class="px-2 py-1.5 rounded border border-base bg-transparent text-xs">
            <option value="all">全部变化</option>
            <option value="logic">逻辑改动</option>
            <option value="position">点位移位</option>
            <option value="comment">注释 / 时间戳</option>
            <option value="config">非程序</option>
          </select>
          <span class="text-xs op-35 ml-auto">{{ filtered.length }} 项</span>
        </div>
        <div class="flex flex-wrap items-center gap-1.5 mt-2">
          <button
            class="px-2 py-0.5 rounded text-xs border transition"
            :class="robotFilter === 'all' ? 'border-[var(--c-fg)] op-100' : 'border-base op-55 hover:op-80'"
            @click="setRobot('all')"
          >
            全部机器人
          </button>
          <button
            v-for="r in robots"
            :key="r.id"
            class="px-2 py-0.5 rounded text-xs border font-mono transition"
            :class="robotFilter === r.id ? 'border-[var(--c-fg)] op-100' : 'border-base op-55 hover:op-80'"
            @click="setRobot(r.id)"
          >
            {{ r.label }}
          </button>
        </div>
      </div>

      <!-- groups -->
      <div class="space-y-10 mt-6 pb-10">
        <section v-for="g in groups" :key="g.robot">
          <div class="flex items-baseline gap-3 mb-2">
            <RouterLink :to="`/r/${g.robot}`" class="text-lg font-750 font-mono hover:underline">
              {{ g.robot.toUpperCase() }}
            </RouterLink>
            <span class="text-xs op-40">{{ g.items.length }} / {{ g.summary }} 项</span>
            <RouterLink :to="`/diff/${g.robot}`" class="text-xs op-40 hover:op-80 ml-auto">
              打开该机器人对比 →
            </RouterLink>
          </div>
          <div class="border border-base rounded-lg overflow-hidden">
            <RouterLink
              v-for="c in g.items"
              :key="c.path"
              :to="open(c)"
              class="grid grid-cols-[minmax(0,1fr)_5rem] sm:grid-cols-[minmax(0,1fr)_7rem_7rem_5.5rem] gap-3 items-center px-3 sm:px-4 py-2 border-b border-gray/8 last:border-b-0 hover:bg-gray/5 transition text-xs"
            >
              <div class="min-w-0 flex items-center gap-2">
                <span class="w-1.5 h-1.5 rounded-full shrink-0" :class="c.status === 'code' ? 'bg-amber-500' : c.status === 'position' ? 'bg-sky-500' : c.status === 'added' ? 'bg-emerald-500' : c.status === 'removed' || c.status === 'failed' ? 'bg-rose-400' : 'bg-neutral-400'" />
                <span class="font-mono truncate">{{ c.path }}</span>
                <span v-if="c.change?.code || c.change?.position" class="font-mono tnum shrink-0 op-50 hidden sm:inline">
                  <template v-if="c.change.code">
                    <span class="st-del">−{{ c.change.codeDel ?? 0 }}</span>
                    <span class="st-add ml-1">+{{ c.change.codeAdd ?? 0 }}</span>
                  </template>
                  <span v-else class="st-chg">±{{ c.change.add }} 行</span>
                </span>
              </div>
              <div class="hidden sm:block text-right font-mono tnum op-45 whitespace-nowrap">
                {{ fmtSize(c.oldSize) }}<span class="op-25"> → </span>{{ fmtSize(c.newSize) }}
              </div>
              <div class="hidden sm:block text-right">
                <span class="badge" :class="statusBadge(c.status)">{{ statusLabel(c.status) }}</span>
              </div>
              <div class="text-right text-xs op-30">
                <span class="i-carbon-arrow-up-right" />
              </div>
            </RouterLink>
          </div>
        </section>
        <div v-if="!groups.length" class="py-20 text-center op-40 text-sm">
          没有匹配的变更
        </div>
      </div>
    </template>

    <div v-else-if="!error" class="space-y-4 pt-8">
      <div class="skeleton h-24 w-1/2" />
      <div class="skeleton h-40 w-full" />
      <div class="skeleton h-64 w-full" />
    </div>
  </div>
</template>
