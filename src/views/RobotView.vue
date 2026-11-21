<script setup lang="ts">
import type { FileEntry, ProgramEntry, RobotData } from '../types'
import { computed, onMounted, ref, watch } from 'vue'
import { useRoute } from 'vue-router'
import { CATEGORIES, noteFor } from '../data/notes'
import { loadRobot } from '../lib/data'
import { diffHref, fmtSize, programHref, statusBadge, statusLabel } from '../lib/format'

const route = useRoute()
const robot = ref<RobotData>()
const error = ref('')
const tab = ref<'programs' | 'files'>('programs')
const query = ref('')
const onlyChanged = ref(false)
const kindFilter = ref('all')

async function load() {
  robot.value = undefined
  error.value = ''
  try {
    robot.value = await loadRobot(String(route.params.robot))
  }
  catch (e) {
    error.value = String(e)
  }
}
onMounted(load)
watch(() => route.params.robot, load)

const stats = computed(() => {
  const r = robot.value
  if (!r)
    return []
  return [
    { v: r.stats.logic, k: '逻辑改动', cls: 'st-chg' },
    { v: r.stats.position, k: '点位移位', cls: 'st-info' },
    { v: r.stats.comment, k: '注释改动', cls: 'op-70' },
    { v: r.stats.textChanged + r.stats.binaryChanged, k: '配置变更', cls: 'op-70' },
    { v: r.stats.converted, k: '可读程序', cls: 'op-70' },
    { v: r.stats.failed, k: '未转译', cls: 'st-del' },
  ]
})

const groups = computed(() => {
  const r = robot.value
  if (!r)
    return []
  const q = query.value.trim().toLowerCase()
  const list = r.programs.filter((p) => {
    if (onlyChanged.value && p.status === 'same')
      return false
    if (!q)
      return true
    return p.id.includes(q) || p.name.toLowerCase().includes(q) || p.comment.toLowerCase().includes(q) || noteFor(p.id, p.comment).title.toLowerCase().includes(q)
  })
  const map = new Map<string, ProgramEntry[]>()
  for (const p of list) {
    const cat = noteFor(p.id, p.comment).category
    if (!map.has(cat))
      map.set(cat, [])
    map.get(cat)!.push(p)
  }
  return CATEGORIES.map(c => ({ ...c, items: (map.get(c.id) ?? []).sort((a, b) => a.id.localeCompare(b.id, undefined, { numeric: true })) })).filter(g => g.items.length)
})

const fileKinds = computed(() => {
  const r = robot.value
  if (!r)
    return []
  const map = new Map<string, number>()
  for (const f of r.files)
    map.set(f.kind, (map.get(f.kind) ?? 0) + 1)
  const labels: Record<string, string> = { program: '程序', text: '文本', binary: '二进制', image: '图片', archive: '压缩包' }
  return [...map.entries()].map(([id, n]) => ({ id, label: labels[id] ?? id, n }))
})

const files = computed(() => {
  const r = robot.value
  if (!r)
    return []
  const q = query.value.trim().toLowerCase()
  return r.files.filter((f) => {
    if (onlyChanged.value && f.status === 'same')
      return false
    if (kindFilter.value !== 'all' && f.kind !== kindFilter.value)
      return false
    return !q || f.path.toLowerCase().includes(q)
  })
})

const changedFileCount = computed(() => robot.value?.files.filter(f => f.status !== 'same').length ?? 0)

function fileLabel(f: FileEntry) {
  if (f.kind === 'program')
    return '程序'
  if (f.kind === 'text')
    return f.ext === '.ls' ? '系统日志' : '文本配置'
  if (f.kind === 'binary')
    return '二进制配置'
  if (f.kind === 'image')
    return '图片'
  return '压缩包'
}

function openFile(f: FileEntry) {
  if (f.kind === 'program') {
    const p = robot.value?.programs.find(x => x.file === f.path)
    if (p)
      return programHref(String(route.params.robot), 'new', p.id)
  }
  return diffHref(String(route.params.robot), f.path)
}

function changeCount(p: ProgramEntry) {
  const c = p.change
  if (!c)
    return ''
  if (c.code) {
    const add = c.codeAdd ?? 0
    const del = c.codeDel ?? 0
    return `−${del} +${add}`
  }
  if (c.position)
    return `±${c.add} 行`
  return statusLabel(p.status)
}

function topFor(p: ProgramEntry) {
  return noteFor(p.id, p.comment)
}
</script>

<template>
  <div class="max-w-[1120px] mx-auto pt-8 sm:pt-10">
    <div v-if="error" class="card text-sm text-rose-500">
      {{ error }}
    </div>

    <template v-if="robot">
      <!-- header -->
      <section class="relative slide-enter-content">
        <RouterLink to="/" class="text-xs op-40 hover:op-80 font-mono">
          ← 总览
        </RouterLink>
        <div class="flex flex-wrap items-end gap-x-5 gap-y-2 mt-4">
          <h1 class="text-5xl sm:text-6xl font-800 font-mono tracking-tight leading-none">
            {{ robot.label }}
          </h1>
          <div class="pb-1">
            <div class="flex flex-wrap items-center gap-2">
              <span class="badge badge-mute">{{ robot.group }}</span>
              <span v-for="role in robot.roles" :key="role" class="text-xs op-60">{{ role }}</span>
            </div>
            <div class="text-xs op-40 mt-1.5 font-mono">
              {{ robot.ops.length ? robot.ops.map(o => `OP${o}`).join(' · ') : '无工位号' }} · {{ robot.new.programs }} 个程序
            </div>
          </div>
        </div>

        <div class="grid sm:grid-cols-2 gap-3 mt-7">
          <div class="border border-base rounded-xl p-4">
            <div class="flex items-center justify-between">
              <span class="mono-label">备份 A · old</span>
              <span class="text-xs font-mono op-40">{{ robot.old.version }}</span>
            </div>
            <div class="text-2xl font-650 font-mono mt-1">
              {{ robot.old.date }}
            </div>
            <div class="flex flex-wrap gap-x-4 gap-y-1 text-xs op-50 mt-2 font-mono">
              <span>{{ robot.old.time }}</span>
              <span>{{ robot.old.files }} 文件</span>
              <span>{{ robot.old.programs }} 程序</span>
              <span>{{ fmtSize(robot.old.bytes) }}</span>
            </div>
          </div>
          <div class="border border-base rounded-xl p-4 relative overflow-hidden">
            <div class="absolute right-3 top-3 text-[10px] font-mono op-25">
              +{{ Math.max(0, robot.new.bytes - robot.old.bytes) }} B
            </div>
            <div class="flex items-center justify-between">
              <span class="mono-label">备份 B · new</span>
              <span class="text-xs font-mono op-40">{{ robot.new.version }}</span>
            </div>
            <div class="text-2xl font-650 font-mono mt-1">
              {{ robot.new.date }}
            </div>
            <div class="flex flex-wrap gap-x-4 gap-y-1 text-xs op-50 mt-2 font-mono">
              <span>{{ robot.new.time }}</span>
              <span>{{ robot.new.files }} 文件</span>
              <span>{{ robot.new.programs }} 程序</span>
              <span>{{ fmtSize(robot.new.bytes) }}</span>
            </div>
          </div>
        </div>

        <div class="grid grid-cols-3 sm:grid-cols-6 gap-y-4 gap-x-3 mt-6 py-5 border-y border-base">
          <div v-for="s in stats" :key="s.k">
            <div class="stat-num" :class="s.cls">
              {{ s.v }}
            </div>
            <div class="text-[11px] op-45">
              {{ s.k }}
            </div>
          </div>
        </div>

        <div class="flex flex-wrap items-center gap-2 mt-5">
          <RouterLink :to="`/changes?robot=${robot.id}&type=all`" class="px-3 py-1.5 rounded border border-base text-xs hover:bg-gray/8 transition flex items-center gap-1.5">
            <span class="i-carbon-list" /> 全部 {{ changedFileCount }} 个变更
          </RouterLink>
          <RouterLink :to="`/diff/${robot.id}`" class="px-3 py-1.5 rounded border border-base text-xs hover:bg-gray/8 transition flex items-center gap-1.5">
            <span class="i-carbon-split-screen" /> 打开对比
          </RouterLink>
          <RouterLink :to="`/compare?a=${robot.id}`" class="px-3 py-1.5 rounded border border-base text-xs hover:bg-gray/8 transition flex items-center gap-1.5">
            <span class="i-carbon-arrows-horizontal" /> 跨机器人
          </RouterLink>
          <span class="text-xs op-35 ml-auto hidden sm:inline">
            行数 {{ robot.stats.lines }} · 唯一程序 {{ new Set(robot.programs.map(p => p.id)).size }}
          </span>
        </div>
      </section>

      <!-- tabs -->
      <div class="flex items-center gap-1 mt-10 border-b border-base">
        <button
          class="px-4 py-2 text-sm transition relative"
          :class="tab === 'programs' ? 'op-100' : 'op-50 hover:op-80'"
          @click="tab = 'programs'"
        >
          程序
          <span class="text-[10px] op-40 ml-1">{{ robot.programs.length }}</span>
          <span v-if="tab === 'programs'" class="absolute left-3 right-3 -bottom-px h-0.5 bg-[var(--c-fg)]" />
        </button>
        <button
          class="px-4 py-2 text-sm transition relative"
          :class="tab === 'files' ? 'op-100' : 'op-50 hover:op-80'"
          @click="tab = 'files'"
        >
          文件
          <span class="text-[10px] op-40 ml-1">{{ robot.files.length }}</span>
          <span v-if="tab === 'files'" class="absolute left-3 right-3 -bottom-px h-0.5 bg-[var(--c-fg)]" />
        </button>
        <div class="ml-auto flex items-center gap-3 py-2">
          <label class="flex items-center gap-1.5 text-xs op-60 cursor-pointer select-none">
            <input v-model="onlyChanged" type="checkbox"> 只看变更
          </label>
        </div>
      </div>

      <div class="flex flex-wrap items-center gap-3 my-4">
        <label class="flex items-center gap-2 px-2.5 py-1.5 border border-base rounded text-sm focus-within:border-gray/50 transition flex-1 max-w-80">
          <span class="i-carbon-search op-40" />
          <input v-model="query" class="bg-transparent outline-none w-full text-sm" :placeholder="tab === 'programs' ? '搜索程序 / 说明…' : '搜索文件…'">
        </label>
        <select v-if="tab === 'files'" v-model="kindFilter" class="px-2 py-1.5 rounded border border-base bg-transparent text-xs font-mono">
          <option value="all">全部类型</option>
          <option v-for="k in fileKinds" :key="k.id" :value="k.id">
            {{ k.label }} ({{ k.n }})
          </option>
        </select>
        <span class="text-xs op-35">{{ tab === 'programs' ? groups.reduce((n, g) => n + g.items.length, 0) : files.length }} 项</span>
      </div>

      <!-- programs -->
      <div v-if="tab === 'programs'" class="space-y-8 pb-10">
        <section v-for="g in groups" :key="g.id">
          <div class="flex items-baseline gap-3 mb-2">
            <h2 class="text-sm font-600">
              {{ g.title }}
            </h2>
            <span class="text-[11px] op-35">{{ g.items.length }}</span>
          </div>
          <p class="text-xs op-40 mb-3 max-w-[80ch]">
            {{ g.desc }}
          </p>
          <div class="border border-base rounded-lg overflow-hidden">
            <RouterLink
              v-for="p in g.items"
              :key="p.id"
              :to="programHref(robot.id, 'new', p.id)"
              class="grid grid-cols-[minmax(0,1fr)_auto] sm:grid-cols-[13rem_minmax(0,1fr)_7rem_5.5rem] items-center gap-x-4 px-3 sm:px-4 py-2.5 border-b border-gray/8 last:border-b-0 hover:bg-gray/5 transition group"
            >
              <div class="flex items-center gap-2 min-w-0">
                <span class="font-mono text-[13px] truncate">{{ p.id }}</span>
                <span v-if="p.status !== 'same'" class="badge shrink-0" :class="statusBadge(p.status)">{{ statusLabel(p.status) }}</span>
                <span v-else-if="!p.new?.converted && !p.old?.converted" class="badge badge-del shrink-0">未转译</span>
              </div>
              <div class="hidden sm:block min-w-0">
                <div class="text-sm truncate">
                  {{ topFor(p).title }}
                </div>
                <div class="text-[11px] op-40 truncate">
                  {{ p.comment || topFor(p).brief }}
                </div>
              </div>
              <div class="hidden sm:block text-right font-mono text-[11px] tnum">
                <span v-if="p.old?.meta">{{ p.old.meta.lineCount }} 行</span>
                <span v-if="p.new?.meta && p.old?.meta && p.new.meta.lineCount !== p.old.meta.lineCount" class="op-40"> → {{ p.new.meta.lineCount }}</span>
                <span v-else-if="!p.old" class="op-40">新增</span>
              </div>
              <div class="text-right font-mono text-[11px] tnum" :class="p.status === 'same' ? 'op-25' : 'st-chg'">
                {{ p.status === 'same' ? '·' : changeCount(p) }}
              </div>
            </RouterLink>
          </div>
        </section>
        <div v-if="!groups.length" class="py-16 text-center op-40 text-sm">
          没有匹配的程序
        </div>
      </div>

      <!-- files -->
      <div v-else class="pb-10">
        <div class="border border-base rounded-lg overflow-hidden">
          <div class="grid grid-cols-[minmax(0,1fr)_5rem_5.5rem] sm:grid-cols-[minmax(0,1fr)_7rem_7rem_5.5rem] gap-3 px-3 sm:px-4 py-2 bg-gray/4 border-b border-base text-[11px] op-40 font-mono">
            <span>路径</span>
            <span class="hidden sm:block">类型</span>
            <span class="text-right">大小 A → B</span>
            <span class="text-right">状态</span>
          </div>
          <RouterLink
            v-for="f in files"
            :key="f.path"
            :to="openFile(f)"
            class="grid grid-cols-[minmax(0,1fr)_5rem_5.5rem] sm:grid-cols-[minmax(0,1fr)_7rem_7rem_5.5rem] gap-3 items-center px-3 sm:px-4 py-2 border-b border-gray/8 last:border-b-0 hover:bg-gray/5 transition text-xs"
          >
            <div class="min-w-0 flex items-center gap-2">
              <span class="font-mono truncate">{{ f.path }}</span>
              <span v-if="f.kind === 'program'" class="i-carbon-code shrink-0 op-30 text-[13px]" />
            </div>
            <div class="hidden sm:block op-40">
              {{ fileLabel(f) }}
            </div>
            <div class="text-right font-mono tnum op-45">
              {{ fmtSize(f.oldSize) }}<span class="op-25"> → </span>{{ fmtSize(f.newSize) }}
            </div>
            <div class="text-right">
              <span v-if="f.kind === 'program' && !f.old?.converted && !f.new?.converted" class="badge badge-del">未转译</span>
              <span v-else-if="f.status === 'same'" class="text-[11px] op-25">·</span>
              <span v-else class="badge" :class="statusBadge(f.status)">{{ statusLabel(f.status) }}</span>
            </div>
          </RouterLink>
        </div>
        <div v-if="!files.length" class="py-16 text-center op-40 text-sm">
          没有匹配的文件
        </div>
        <p class="text-xs op-35 mt-3">
          程序文件打开可读的 .ls；文本配置打开行级对比；二进制文件对比会显示从原始字节中提取的可打印字符串。
        </p>
      </div>
    </template>

    <div v-else-if="!error" class="space-y-4 pt-8">
      <div class="skeleton h-24 w-1/2" />
      <div class="skeleton h-32 w-full" />
      <div class="skeleton h-64 w-full" />
    </div>
  </div>
</template>
