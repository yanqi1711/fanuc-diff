<script setup lang="ts">
import type { DiffRow } from '../lib/diff'
import type { FileEntry, IndexData, RobotData, Side } from '../types'
import { useLocalStorage, useMediaQuery } from '@vueuse/core'
import { computed, onMounted, ref, watch } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import SyntaxLine from '../components/diff/SyntaxLine.vue'
import { loadBlob, loadIndex, loadRobot } from '../lib/data'
import { diffRows } from '../lib/diff'
import { programHref, statusBadge, statusLabel } from '../lib/format'

const route = useRoute()
const router = useRouter()

const index = ref<IndexData>()
const robotA = ref<RobotData>()
const robotB = ref<RobotData>()
const loading = ref(true)
const error = ref('')
const textA = ref('')
const textB = ref('')
const chosenPath = ref(String(route.query.f ?? ''))

const split = useLocalStorage('fdiff-diff-split', true)
const ignoreWs = useLocalStorage('fdiff-diff-ignore-ws', true)
const hideMeta = useLocalStorage('fdiff-diff-hide-meta', true)
const context = ref<'3' | '10' | 'all'>('3')
const isNarrow = useMediaQuery('(max-width: 767px)')
const splitView = computed(() => split.value && !isNarrow.value)

const mode = computed(() => route.query.mode === 'cross' ? 'cross' : 'time')
const aId = computed(() => String(route.params.robot || 'r1'))
const bId = computed(() => String(route.query.b || (aId.value === 'r1' ? 'r2' : 'r1')))

const robotOptions = computed(() => index.value?.robots ?? [])

function readable(side: Side | null | undefined, kind: string) {
  if (!side)
    return false
  if (kind === 'program')
    return !!side.converted
  return !!side.blob
}

const candidates = computed<FileEntry[]>(() => {
  const a = robotA.value
  if (!a)
    return []
  if (mode.value === 'cross') {
    const b = robotB.value
    if (!b)
      return []
    const bMap = new Map(b.files.map(f => [f.path, f]))
    return a.files
      .filter(f => f.kind === 'program' || f.kind === 'text')
      .filter(f => readable(f.new, f.kind) && readable(bMap.get(f.path)?.new, f.kind))
      .sort((x, y) => (x.kind === y.kind ? x.path.localeCompare(y.path, undefined, { numeric: true }) : x.kind === 'program' ? -1 : 1))
  }
  return a.files
    .filter((f) => {
      if (f.kind === 'program' || f.kind === 'text')
        return true
      return f.status === 'changed' && readable(f.old, f.kind) && readable(f.new, f.kind)
    })
    .sort((x, y) => {
      const rank = (s: string) => ({ code: 0, position: 1, comment: 2, meta: 3, changed: 4, failed: 5, same: 6 } as Record<string, number>)[s] ?? 9
      return rank(x.status) - rank(y.status)
        || (x.kind === y.kind ? x.path.localeCompare(y.path, undefined, { numeric: true }) : x.kind === 'program' ? -1 : 1)
    })
})

const preferred = computed(() => {
  const list = candidates.value
  return list.find(f => f.status === 'code')
    ?? list.find(f => f.status === 'position')
    ?? list.find(f => f.status === 'comment')
    ?? list.find(f => f.kind === 'program' && f.status !== 'same')
    ?? list.find(f => f.kind === 'program')
    ?? list[0]
})

const selected = computed(() => candidates.value.find(f => f.path === chosenPath.value) ?? preferred.value)
const selectedKind = computed(() => selected.value?.kind ?? 'text')
const isProgram = computed(() => selectedKind.value === 'program')
const isBinary = computed(() => {
  if (selectedKind.value === 'binary')
    return true
  if (!isProgram.value)
    return false
  const s = mode.value === 'cross' ? robotA.value?.files.find(f => f.path === selected.value?.path)?.new : selected.value?.new
  return !!s && !s.converted
})

const sideA = computed<Side | null>(() => {
  const f = selected.value
  if (!f)
    return null
  if (mode.value === 'cross')
    return robotA.value?.files.find(x => x.path === f.path)?.new ?? null
  return f.old
})
const sideB = computed<Side | null>(() => {
  const f = selected.value
  if (!f)
    return null
  if (mode.value === 'cross')
    return robotB.value?.files.find(x => x.path === f.path)?.new ?? null
  return f.new
})

const labelA = computed(() => {
  if (!robotA.value)
    return 'A'
  return mode.value === 'cross' ? `${robotA.value.label} · ${robotA.value.new.date}` : `${robotA.value.label} · ${robotA.value.old.date}`
})
const labelB = computed(() => {
  if (mode.value === 'cross')
    return robotB.value ? `${robotB.value.label} · ${robotB.value.new.date}` : 'B'
  return robotA.value ? `${robotA.value.label} · ${robotA.value.new.date}` : 'B'
})

const opts = computed(() => ({
  ignoreWhitespace: ignoreWs.value,
  hideMeta: isProgram.value && hideMeta.value,
  context: context.value === 'all' ? Infinity : Number(context.value),
}))

const result = computed(() => {
  if (loading.value)
    return { rows: [] as DiffRow[], add: 0, del: 0 }
  return diffRows(textA.value, textB.value, opts.value)
})

const identical = computed(() => !loading.value && result.value.add === 0 && result.value.del === 0)

interface SplitRow {
  type: 'same' | 'add' | 'del' | 'gap' | 'pair'
  a?: DiffRow
  b?: DiffRow
  text?: string
}

const splitRows = computed<SplitRow[]>(() => {
  const out: SplitRow[] = []
  let dels: DiffRow[] = []
  let adds: DiffRow[] = []
  const flush = () => {
    const n = Math.max(dels.length, adds.length)
    for (let i = 0; i < n; i++)
      out.push({ type: 'pair', a: dels[i], b: adds[i] })
    dels = []
    adds = []
  }
  for (const r of result.value.rows) {
    if (r.type === 'del') {
      dels.push(r)
      continue
    }
    if (r.type === 'add') {
      adds.push(r)
      continue
    }
    flush()
    if (r.type === 'gap')
      out.push({ type: 'gap', text: r.text })
    else
      out.push({ type: 'same', a: r, b: r })
  }
  flush()
  return out
})

const groups = computed(() => {
  const map = new Map<string, FileEntry[]>()
  for (const f of candidates.value) {
    const k = f.kind === 'program' ? '程序' : f.kind === 'text' ? '文本 / 日志' : '二进制提取字符串'
    if (!map.has(k))
      map.set(k, [])
    map.get(k)!.push(f)
  }
  return [...map.entries()]
})

const fileChange = computed(() => mode.value === 'time' ? selected.value?.change : null)
const fileStatus = computed(() => selected.value?.status)

function onMode(m: 'time' | 'cross') {
  router.replace({ path: `/diff/${aId.value}`, query: { ...route.query, mode: m, f: undefined } })
}

function onRobotA(id: string) {
  router.replace({ path: `/diff/${id}`, query: { ...route.query, f: undefined } })
}

function onRobotB(id: string) {
  router.replace({ query: { ...route.query, b: id, f: undefined } })
}

function onFile(path: string) {
  chosenPath.value = path
  router.replace({ query: { ...route.query, f: path } })
}

function resetFile() {
  chosenPath.value = ''
  router.replace({ query: { ...route.query, f: undefined } })
}

function openProgram(side: 'a' | 'b') {
  const f = selected.value
  if (!f)
    return
  if (side === 'a' && robotA.value)
    router.push(programHref(robotA.value.id, mode.value === 'cross' ? 'new' : 'old', f.path.replace(/\.tp$/i, '')))
  if (side === 'b') {
    if (mode.value === 'cross' && robotB.value)
      router.push(programHref(robotB.value.id, 'new', f.path.replace(/\.tp$/i, '')))
    else if (robotA.value)
      router.push(programHref(robotA.value.id, 'new', f.path.replace(/\.tp$/i, '')))
  }
}

let loadSeq = 0
async function loadRobots() {
  const seq = ++loadSeq
  loading.value = true
  error.value = ''
  try {
    const [a, b] = await Promise.all([
      loadRobot(aId.value),
      mode.value === 'cross' ? loadRobot(bId.value) : Promise.resolve(undefined),
    ])
    if (seq !== loadSeq)
      return
    robotA.value = a
    robotB.value = b
  }
  catch (e) {
    error.value = String(e)
  }
  finally {
    if (seq === loadSeq)
      loading.value = false
  }
}

let textSeq = 0
async function loadTexts() {
  const f = selected.value
  if (!f) {
    textA.value = ''
    textB.value = ''
    return
  }
  const seq = ++textSeq
  try {
    const [a, b] = await Promise.all([
      sideA.value?.blob ? loadBlob(sideA.value.blob) : Promise.resolve(''),
      sideB.value?.blob ? loadBlob(sideB.value.blob) : Promise.resolve(''),
    ])
    if (seq !== textSeq)
      return
    textA.value = a
    textB.value = b
  }
  catch (e) {
    error.value = String(e)
  }
}

onMounted(async () => {
  try {
    index.value = await loadIndex()
  }
  catch { /* robot selectors fall back to the current robot */ }
})

watch([aId, bId, mode], () => {
  robotA.value = undefined
  robotB.value = undefined
  loadRobots()
}, { immediate: true })

watch(selected, (s) => {
  if (!s)
    return
  if (chosenPath.value !== s.path) {
    chosenPath.value = s.path
    router.replace({ query: { ...route.query, f: s.path } })
  }
  loadTexts()
}, { immediate: true })

watch(() => route.query.f, (v) => {
  const s = String(v ?? '')
  if (s && s !== chosenPath.value)
    chosenPath.value = s
})

function changeLabel(f: FileEntry) {
  if (mode.value === 'cross')
    return f.path
  return `${f.path} · ${statusLabel(f.status)}`
}
</script>

<template>
  <div class="max-w-[1400px] mx-auto pt-8 sm:pt-10">
    <div class="flex items-baseline gap-3">
      <h1 class="text-3xl font-800 tracking-tight">
        对比
      </h1>
      <span class="text-xs op-40 font-mono hidden sm:inline">逐行 · 忽略时间戳 · 逻辑优先</span>
    </div>
    <p class="text-sm op-55 mt-2 max-w-[72ch]">
      默认比较同一台机器人的两次备份；切到「跨机器人」可以比较两台机器人上的同名程序。程序按 TP 词法重新着色，二进制文件比较的是从原始字节中提取的可打印字符串。
    </p>

    <div v-if="error" class="card text-sm text-rose-500 mt-6">
      {{ error }}
    </div>

    <!-- controls -->
    <div class="mt-6 border border-base rounded-xl p-3 sm:p-4 space-y-3">
      <div class="flex flex-wrap items-center gap-2">
        <div class="flex rounded-md border border-base overflow-hidden text-xs">
          <button class="px-3 py-1.5 transition" :class="mode === 'time' ? 'bg-[var(--c-fg)] text-[var(--c-bg)]' : 'op-60 hover:op-100'" @click="onMode('time')">
            前后版本
          </button>
          <button class="px-3 py-1.5 transition border-l border-base" :class="mode === 'cross' ? 'bg-[var(--c-fg)] text-[var(--c-bg)]' : 'op-60 hover:op-100'" @click="onMode('cross')">
            跨机器人
          </button>
        </div>

        <div class="flex items-center gap-1.5 text-xs">
          <span class="op-40">A</span>
          <select :value="aId" class="px-2 py-1.5 rounded border border-base bg-transparent font-mono text-xs" @change="onRobotA(($event.target as HTMLSelectElement).value)">
            <option v-for="r in robotOptions" :key="r.id" :value="r.id">
              {{ r.label }} · {{ r.ops.length ? r.ops.map(o => `OP${o}`).join('/') : r.group }}
            </option>
          </select>
        </div>

        <template v-if="mode === 'cross'">
          <span class="text-xs op-40">vs</span>
          <select :value="bId" class="px-2 py-1.5 rounded border border-base bg-transparent font-mono text-xs" @change="onRobotB(($event.target as HTMLSelectElement).value)">
            <option v-for="r in robotOptions" :key="r.id" :value="r.id">
              {{ r.label }} · {{ r.ops.length ? r.ops.map(o => `OP${o}`).join('/') : r.group }}
            </option>
          </select>
        </template>

        <span v-if="mode === 'cross' && aId === bId" class="text-xs text-rose-500">
          请选择两台不同的机器人
        </span>
      </div>

      <div class="flex flex-wrap items-center gap-2">
        <select :value="selected?.path ?? ''" class="flex-1 min-w-[16rem] max-w-[36rem] px-2 py-1.5 rounded border border-base bg-transparent font-mono text-xs" @change="onFile(($event.target as HTMLSelectElement).value)">
          <option value="" disabled>
            选择文件…
          </option>
          <optgroup v-for="[g, list] in groups" :key="g" :label="g">
            <option v-for="f in list" :key="f.path" :value="f.path">
              {{ changeLabel(f) }}
            </option>
          </optgroup>
        </select>
        <button class="btn border border-base" title="跳到默认变更" @click="resetFile">
          <span class="i-carbon-reset" /> 默认
        </button>
      </div>

      <div class="flex flex-wrap items-center gap-x-4 gap-y-2 text-xs op-65">
        <label class="flex items-center gap-1.5 cursor-pointer select-none whitespace-nowrap">
          <input v-model="ignoreWs" type="checkbox"> 忽略行尾空白
        </label>
        <label v-if="isProgram" class="flex items-center gap-1.5 cursor-pointer select-none whitespace-nowrap">
          <input v-model="hideMeta" type="checkbox"> 忽略时间戳
        </label>
        <select v-model="context" class="bg-transparent border border-base rounded px-1.5 py-1 text-xs">
          <option value="3">上下文 3 行</option>
          <option value="10">上下文 10 行</option>
          <option value="all">全部行</option>
        </select>
        <div class="hidden sm:flex rounded border border-base overflow-hidden">
          <button class="px-2 py-1" :class="split ? 'bg-gray/12' : 'op-50'" @click="split = true">
            分栏
          </button>
          <button class="px-2 py-1 border-l border-base" :class="!split ? 'bg-gray/12' : 'op-50'" @click="split = false">
            合并
          </button>
        </div>
        <span class="sm:hidden op-35">手机端使用合并视图</span>
      </div>
    </div>

    <!-- file meta -->
    <div v-if="selected" class="flex flex-wrap items-center gap-x-4 gap-y-1.5 my-4 text-xs">
      <span class="font-mono">{{ selected.path }}</span>
      <span v-if="mode === 'time' && fileStatus" class="badge" :class="statusBadge(fileStatus)">{{ statusLabel(fileStatus) }}</span>
      <span v-if="!loading" class="font-mono tnum">
        <span class="st-del">−{{ result.del }}</span>
        <span class="st-add ml-2">+{{ result.add }}</span>
      </span>
      <span v-else-if="fileChange" class="font-mono tnum">
        <span class="st-del">−{{ fileChange.del }}</span>
        <span class="st-add ml-2">+{{ fileChange.add }}</span>
      </span>
      <span v-if="isProgram" class="badge badge-info">TP → LS</span>
      <span v-if="isBinary" class="badge badge-mute">二进制字符串</span>
      <span class="op-35 font-mono">
        {{ sideA?.size ? `${(sideA.size / 1024).toFixed(1)} KB` : '—' }} → {{ sideB?.size ? `${(sideB.size / 1024).toFixed(1)} KB` : '—' }}
      </span>
      <span class="ml-auto flex items-center gap-2">
        <button v-if="isProgram" class="st-chg hover:underline" @click="openProgram('a')">
          打开 A 侧程序 →
        </button>
        <button v-if="isProgram && mode === 'time' && sideB?.converted" class="st-chg hover:underline" @click="openProgram('b')">
          打开 B 侧程序 →
        </button>
      </span>
    </div>

    <div v-if="isBinary" class="mb-3 text-xs op-45 flex items-start gap-1.5">
      <span class="i-carbon-information mt-0.5 shrink-0" />
      这不是源码：对比的是从二进制文件提取的连续可打印 ASCII 字符串，顺序与原始字节一致，但偏移和二进制字段无法完整表达。
    </div>

    <div v-if="loading" class="space-y-2">
      <div class="skeleton h-8 w-full" />
      <div class="skeleton h-64 w-full" />
    </div>

    <div v-else-if="!selected" class="py-20 text-center op-45 text-sm">
      没有可对比的文件
    </div>

    <template v-else>
      <div v-if="identical" class="border border-base rounded-lg py-14 text-center">
        <div class="i-carbon-checkmark-outline text-2xl op-30 mx-auto" />
        <div class="text-sm op-60 mt-2">
          两份内容一致
        </div>
        <div class="text-xs op-35 mt-1">
          {{ context === 'all' ? '' : '已隐藏无差异行；可以切换为「全部行」查看完整内容。' }}
        </div>
      </div>

      <div v-else class="border border-base rounded-lg overflow-x-auto font-mono text-[12.5px] leading-[1.65]">
        <div v-if="splitView" class="flex text-[11px] border-b border-base bg-gray/4">
          <span class="flex-1 px-3 py-1.5 truncate">
            <span class="op-45">A</span> {{ labelA }}
          </span>
          <span class="flex-1 px-3 py-1.5 border-l border-base truncate">
            <span class="op-45">B</span> {{ labelB }}
          </span>
        </div>
        <div v-else class="flex items-center gap-2 text-[11px] border-b border-base bg-gray/4 px-3 py-1.5 truncate">
          <span class="op-45">A</span> {{ labelA }}
          <span class="op-25 mx-1">→</span>
          <span class="op-45">B</span> {{ labelB }}
        </div>

        <!-- split -->
        <template v-if="splitView">
          <div v-for="(r, i) in splitRows" :key="i" class="grid grid-cols-2 border-b border-gray/8 last:border-b-0 min-w-[760px]">
            <template v-if="r.type === 'gap'">
              <div class="col-span-2 px-3 py-1 text-[11px] op-40 bg-gray/4 italic">
                {{ r.text }}
              </div>
            </template>
            <template v-else>
              <div class="flex min-w-0" :class="r.a?.type === 'del' ? 'diff-del' : ''">
                <span class="diff-line-no w-10 shrink-0">{{ r.a?.a ?? '' }}</span>
                <span class="w-4 shrink-0 text-center select-none" :class="r.a?.type === 'del' ? 'st-del' : 'op-0'">{{ r.a?.type === 'del' ? '−' : '' }}</span>
                <div class="px-2 whitespace-pre overflow-hidden">
                  <SyntaxLine v-if="r.a" :text="r.a.text" :program="isProgram" />
                </div>
              </div>
              <div class="flex min-w-0 border-l border-base" :class="r.b?.type === 'add' ? 'diff-add' : ''">
                <span class="diff-line-no w-10 shrink-0">{{ r.b?.b ?? '' }}</span>
                <span class="w-4 shrink-0 text-center select-none" :class="r.b?.type === 'add' ? 'st-add' : 'op-0'">{{ r.b?.type === 'add' ? '+' : '' }}</span>
                <div class="px-2 whitespace-pre overflow-hidden">
                  <SyntaxLine v-if="r.b" :text="r.b.text" :program="isProgram" />
                </div>
              </div>
            </template>
          </div>
        </template>

        <!-- unified -->
        <template v-else>
          <div
            v-for="(r, i) in result.rows"
            :key="i"
            class="diff-row min-w-0 sm:min-w-[640px]"
            :class="r.type === 'add' ? 'diff-add' : r.type === 'del' ? 'diff-del' : r.type === 'gap' ? 'diff-gap' : ''"
          >
            <span class="diff-line-no py-0.5">{{ r.a ?? '' }}</span>
            <span class="diff-line-no py-0.5">{{ r.b ?? '' }}</span>
            <span class="text-center select-none py-0.5" :class="r.type === 'del' ? 'st-del' : r.type === 'add' ? 'st-add' : 'op-0'">{{ r.type === 'del' ? '−' : r.type === 'add' ? '+' : '' }}</span>
            <div v-if="r.type === 'gap'" class="px-2 py-0.5 text-[11px] op-40 italic">
              {{ r.text }}
            </div>
            <div v-else class="px-2 py-0.5 whitespace-pre-wrap break-words sm:whitespace-pre">
              <SyntaxLine :text="r.text" :program="isProgram" />
            </div>
          </div>
        </template>
      </div>

      <div class="flex flex-wrap items-center gap-4 mt-3 text-xs op-40">
        <span><span class="st-del">−{{ result.del }}</span> 行只在 A</span>
        <span><span class="st-add">+{{ result.add }}</span> 行只在 B</span>
        <span v-if="fileChange?.code || fileChange?.position || fileChange?.comment" class="flex items-center gap-1.5">
          <span v-if="fileChange.code" class="badge badge-code">逻辑</span>
          <span v-if="fileChange.position" class="badge badge-code">点位</span>
          <span v-if="fileChange.comment" class="badge badge-mute">注释</span>
        </span>
        <span class="ml-auto">
          行号 A / B · 空白与时间戳选项只影响比较，不改原始内容
        </span>
      </div>
    </template>
  </div>
</template>
