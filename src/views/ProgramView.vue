<script setup lang="ts">
import type { ProgramEntry, RobotData } from '../types'
import { useLocalStorage } from '@vueuse/core'
import { computed, nextTick, onMounted, ref, watch } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import CodeBlock from '../components/program/CodeBlock.vue'
import PositionDelta from '../components/program/PositionDelta.vue'
import PositionTable from '../components/program/PositionTable.vue'
import ProgramSidebar from '../components/program/ProgramSidebar.vue'
import { CATEGORIES, failedNote, noteFor } from '../data/notes'
import { loadBlob, loadRobot } from '../lib/data'
import { changedLineSets } from '../lib/diff'
import { diffHref, fmtSize, programHref, statusBadge, statusLabel } from '../lib/format'
import { renderLines } from '../lib/render'
import { parseProgram } from '../lib/tp'

interface CallInfo {
  id: string
  title: string
  brief: string
}

const route = useRoute()
const router = useRouter()

const robot = ref<RobotData>()
const error = ref('')
const loading = ref(true)
const oldText = ref('')
const newText = ref('')
const failureText = ref('')
const sidebarOpen = ref(false)
const showRaw = ref(false)
const showExplain = useLocalStorage('fdiff-show-explain', true)
const markChanges = useLocalStorage('fdiff-mark-changes', true)

const date = computed<'old' | 'new'>(() => route.params.date === 'old' ? 'old' : 'new')
const programId = computed(() => String(route.params.program).toLowerCase())
const program = computed<ProgramEntry | undefined>(() => robot.value?.programs.find(p => p.id === programId.value))
const note = computed(() => program.value ? noteFor(program.value.id, program.value.comment) : undefined)
const categoryTitle = computed(() => CATEGORIES.find(c => c.id === note.value?.category)?.title ?? '程序')
const side = computed(() => program.value ? program.value[date.value] : undefined)
const text = computed(() => date.value === 'old' ? oldText.value : newText.value)
const tp = computed(() => text.value ? parseProgram(text.value) : undefined)
const otherTp = computed(() => {
  const t = date.value === 'old' ? newText.value : oldText.value
  return t ? parseProgram(t) : undefined
})

const programMap = computed(() => {
  const map: Record<string, CallInfo> = {}
  for (const p of robot.value?.programs ?? []) {
    const info = { id: p.id, title: noteFor(p.id, p.comment).title, brief: noteFor(p.id, p.comment).brief }
    map[p.name.toUpperCase()] = info
    map[p.id.toUpperCase()] = info
  }
  return map
})

function describe(name: string) {
  return programMap.value[name.toUpperCase()]?.brief
    ?? (/^(TWK|THK_K|TCHKK|SGPRSTSP|SGPRSTST)/i.test(name) ? 'SpotTool+ 内置 KAREL 程序' : undefined)
}

const lines = computed(() => tp.value ? renderLines(tp.value, note.value, describe) : [])

const lineSets = computed(() => {
  if (!oldText.value || !newText.value)
    return { oldSet: new Set<number>(), newSet: new Set<number>() }
  return changedLineSets(oldText.value, newText.value, { ignoreWhitespace: true, hideMeta: true })
})
const hasCodeOrCommentChange = computed(() => !!(program.value?.change?.code || program.value?.change?.comment))
const changedLines = computed(() => hasCodeOrCommentChange.value && markChanges.value ? (date.value === 'old' ? lineSets.value.oldSet : lineSets.value.newSet) : new Set<number>())

const baseline = computed(() => otherTp.value?.positions)
const positionDelta = computed(() => {
  if (!program.value || program.value.status !== 'position')
    return null
  const oldP = oldText.value ? parseProgram(oldText.value).positions : []
  const newP = newText.value ? parseProgram(newText.value).positions : []
  if (!oldP.length || !newP.length)
    return null
  return { old: oldP, new: newP }
})

const attrs = computed(() => {
  const t = tp.value
  if (!t)
    return []
  const a = t.attrs
  const out: { k: string, v: string }[] = []
  if (t.macro)
    out.push({ k: '类型', v: '宏 Macro' })
  if (a.DEFAULT_GROUP)
    out.push({ k: '动作组', v: a.DEFAULT_GROUP })
  if (a.CREATE)
    out.push({ k: '创建', v: a.CREATE.replace(/DATE\s+|TIME\s+/g, '') })
  if (a.MODIFIED)
    out.push({ k: '修改', v: a.MODIFIED.replace(/DATE\s+|TIME\s+/g, '') })
  if (a.LINE_COUNT)
    out.push({ k: '行数', v: a.LINE_COUNT })
  if (a.OWNER)
    out.push({ k: '所有者', v: a.OWNER })
  return out
})

const internalCalls = computed(() => {
  const seen = new Set<string>()
  return (program.value?.calls ?? []).filter(c => !seen.has(c.target) && seen.add(c.target))
})
const callers = computed(() => {
  const seen = new Set<string>()
  return (program.value?.calledBy ?? []).filter(c => !seen.has(c.from) && seen.add(c.from))
})

const activePos = ref<number>()
const highlight = computed(() => {
  const m = route.hash.match(/^#L(\d+)$/)
  return m ? Number(m[1]) : undefined
})

function selectLine(no: number) {
  router.replace({ hash: `#L${no}` })
}
async function selectPos(id: number) {
  activePos.value = id
  await nextTick()
  document.getElementById(`P${id}`)?.scrollIntoView({ behavior: 'smooth', block: 'center' })
}

let loadSeq = 0
async function load() {
  const seq = ++loadSeq
  loading.value = true
  error.value = ''
  oldText.value = ''
  newText.value = ''
  failureText.value = ''
  try {
    const r = await loadRobot(String(route.params.robot))
    if (seq !== loadSeq)
      return
    robot.value = r
    const p = r.programs.find(x => x.id === programId.value)
    if (!p) {
      loading.value = false
      return
    }
    const [o, n] = await Promise.all([
      p.old?.blob && p.old.converted ? loadBlob(p.old.blob) : Promise.resolve(''),
      p.new?.blob && p.new.converted ? loadBlob(p.new.blob) : Promise.resolve(''),
    ])
    if (seq !== loadSeq)
      return
    oldText.value = o
    newText.value = n
    const active = date.value === 'old' ? p.old : p.new
    if (active && !active.converted && active.blob)
      failureText.value = await loadBlob(active.blob)
  }
  catch (e) {
    error.value = String(e)
  }
  finally {
    if (seq === loadSeq)
      loading.value = false
  }
}

onMounted(load)
watch([() => route.params.robot, programId], load)
watch(() => route.params.date, () => {
  showRaw.value = false
  activePos.value = undefined
})

const statusText = computed(() => {
  const s = program.value?.status
  return s ? statusLabel(s) : ''
})
</script>

<template>
  <div class="max-w-[1400px] mx-auto pt-6">
    <div v-if="error" class="card text-sm text-rose-500">
      {{ error }}
    </div>

    <div v-else-if="loading && !robot" class="grid lg:grid-cols-[230px_minmax(0,1fr)] gap-10">
      <div class="skeleton h-64" />
      <div class="space-y-4">
        <div class="skeleton h-10 w-1/2" />
        <div class="skeleton h-64 w-full" />
      </div>
    </div>

    <div v-else-if="robot" class="lg:grid lg:grid-cols-[230px_minmax(0,1fr)] lg:gap-10">
      <div class="lg:sticky lg:top-20 lg:self-start lg:max-h-[calc(100vh-6rem)] lg:overflow-y-auto lg:pr-2">
        <button class="btn lg:!hidden mb-4 border border-base" @click="sidebarOpen = !sidebarOpen">
          <span class="i-carbon-list" /> 程序列表
        </button>
        <ProgramSidebar
          :programs="robot.programs"
          :robot="robot.id"
          :date="date"
          :active-id="program?.id"
          :class="sidebarOpen ? 'block' : 'hidden lg:block'"
          class="mb-8"
          @navigate="sidebarOpen = false"
        />
      </div>

      <article v-if="program" :key="`${program.id}-${date}`" class="min-w-0">
        <div class="flex flex-wrap items-center gap-2 text-xs op-40 font-mono">
          <RouterLink to="/" class="hover:op-80">
            总览
          </RouterLink>
          <span>/</span>
          <RouterLink :to="`/r/${robot.id}`" class="hover:op-80">
            {{ robot.label }}
          </RouterLink>
          <span>/</span>
          <span>{{ program.id }}</span>
          <span class="ml-auto flex items-center gap-1.5">
            <span class="w-1.5 h-1.5 rounded-full" :class="date === 'old' ? 'bg-neutral-400' : 'bg-amber-500'" />
            {{ date === 'old' ? robot.old.date : robot.new.date }} 备份
          </span>
        </div>

        <header class="relative mt-4 slide-enter-content">
          <div class="text-xs op-50 mb-2">
            {{ categoryTitle }}
          </div>
          <div class="flex flex-wrap items-end gap-x-4 gap-y-2">
            <h1 class="text-4xl sm:text-5xl font-800 font-mono break-all leading-none">
              {{ program.id }}
            </h1>
            <span v-if="program.status !== 'same'" class="badge mb-1.5" :class="statusBadge(program.status)">{{ statusText }}</span>
          </div>
          <p class="text-lg mt-3 op-80">
            {{ note?.title }}
            <span v-if="program.comment" class="op-40 text-base font-mono"> · "{{ program.comment }}"</span>
          </p>

          <div class="flex flex-wrap gap-x-5 gap-y-1 mt-4 text-xs">
            <span v-for="a in attrs" :key="a.k" class="op-60">
              <span class="op-50">{{ a.k }}</span> <span class="font-mono">{{ a.v }}</span>
            </span>
          </div>
          <div v-if="tp?.appl.length" class="flex flex-wrap gap-1.5 mt-3">
            <span v-for="a in tp.appl" :key="a" class="chip">{{ a }}</span>
          </div>

          <div class="flex flex-wrap items-center gap-2 mt-5">
            <RouterLink :to="programHref(robot.id, date === 'old' ? 'new' : 'old', program.id)" class="px-2.5 py-1 rounded border border-base text-xs hover:bg-gray/8 transition flex items-center gap-1.5">
              <span class="i-carbon-switch" /> 切换到{{ date === 'old' ? '新' : '旧' }}备份
            </RouterLink>
            <RouterLink :to="diffHref(robot.id, program.file)" class="px-2.5 py-1 rounded border border-base text-xs hover:bg-gray/8 transition flex items-center gap-1.5">
              <span class="i-carbon-split-screen" /> 与另一版本对比
            </RouterLink>
            <span class="text-xs op-35 font-mono ml-auto hidden sm:inline">
              {{ side?.converted ? `${fmtSize(side.size)} .tp → .ls` : `${fmtSize(side?.size ?? 0)} .tp` }}
            </span>
          </div>

          <div v-if="program.status !== 'same'" class="border border-base rounded-lg p-3 mt-6 flex flex-wrap items-center gap-x-4 gap-y-2 text-xs">
            <span class="font-600">变更摘要</span>
            <span v-if="program.change?.code" class="font-mono tnum">
              <span class="st-del">−{{ program.change.codeDel ?? 0 }}</span>
              <span class="st-add ml-2">+{{ program.change.codeAdd ?? 0 }}</span>
              <span class="op-35 ml-1">行逻辑</span>
            </span>
            <span v-else-if="program.change?.position" class="font-mono tnum">
              <span class="st-chg">±{{ program.change.add }}</span>
              <span class="op-35 ml-1">行点位</span>
            </span>
            <span v-if="program.change?.position" class="badge badge-code">点位</span>
            <span v-if="program.change?.comment" class="badge badge-mute">注释</span>
            <span v-if="program.change?.meta" class="badge badge-mute">时间戳</span>
            <span class="op-45 font-mono">
              {{ program.old?.meta?.modified || '—' }} → {{ program.new?.meta?.modified || '—' }}
            </span>
            <RouterLink :to="diffHref(robot.id, program.file)" class="ml-auto st-chg hover:underline">
              查看逐行差异 →
            </RouterLink>
          </div>

          <div class="prose mt-6">
            <p><strong>{{ note?.brief }}</strong></p>
            <p v-for="(d, i) in note?.detail" :key="i">
              {{ d }}
            </p>
          </div>

          <div v-if="note?.warnings?.length" class="mt-5 max-w-[68ch] space-y-2">
            <div v-for="(w, i) in note.warnings" :key="i" class="flex gap-2 text-sm px-3 py-2 rounded border border-amber/30 bg-amber/6">
              <span class="i-carbon-warning-alt text-amber-600 dark:text-amber-400 shrink-0 mt-1" />
              <span class="op-85">{{ w }}</span>
            </div>
          </div>

          <div class="grid sm:grid-cols-2 gap-6 mt-8 text-sm">
            <div>
              <div class="text-xs op-40 mb-2">
                被以下程序调用
              </div>
              <div v-if="!callers.length" class="op-40 text-xs">
                无（由 PLC 选择 / 手动执行 / 未使用）
              </div>
              <div class="flex flex-wrap gap-2">
                <RouterLink
                  v-for="c in callers"
                  :key="c.from"
                  :to="programHref(robot.id, date, c.from)"
                  class="chip hover:op-100 transition"
                >
                  ← {{ robot.programs.find(p => p.id === c.from)?.name ?? c.from }}
                </RouterLink>
              </div>
            </div>
            <div>
              <div class="text-xs op-40 mb-2">
                调用了
              </div>
              <div v-if="!internalCalls.length" class="op-40 text-xs">
                无
              </div>
              <div class="flex flex-wrap gap-2">
                <template v-for="c in internalCalls" :key="c.target">
                  <RouterLink v-if="!c.external" :to="programHref(robot.id, date, c.target)" class="chip hover:op-100 transition">
                    {{ c.name }} →
                  </RouterLink>
                  <span v-else class="chip op-50" title="KAREL 内置程序，不在备份中">{{ c.name }} ⌁</span>
                </template>
              </div>
            </div>
          </div>
        </header>

        <!-- failure / missing side -->
        <div v-if="!side?.converted" class="mt-10 border border-base rounded-lg p-5">
          <div class="flex items-center gap-2">
            <span class="i-carbon-warning-alt text-rose-500" />
            <span class="font-600 text-sm">这个程序未能转译</span>
            <span class="badge badge-del ml-auto">{{ failedNote(program.id).title }}</span>
          </div>
          <p class="text-sm op-60 mt-2">
            {{ failedNote(program.id).reason }}
          </p>
          <p class="text-xs op-40 mt-2">
            printtp 只能反编译控制器选项中已安装指令字典的程序。下面是从二进制 <code class="font-mono">.tp</code> 中提取的可打印字符串，仍可与另一备份做文本级对比。
          </p>
          <pre class="mt-4 p-3 border border-base rounded text-xs font-mono whitespace-pre-wrap op-70 max-h-96 overflow-auto">{{ failureText || '无字符串数据' }}</pre>
          <RouterLink :to="diffHref(robot.id, program.file)" class="inline-flex items-center gap-1 text-xs st-chg mt-3">
            对比二进制提取的字符串 → 
          </RouterLink>
        </div>

        <template v-else>
          <div class="flex flex-wrap items-center gap-2 mt-10 mb-3 slide-enter">
            <h2 class="text-sm font-600 mr-auto">
              程序代码 <span class="op-40 font-normal">/MN · {{ lines.length }} 行</span>
              <span v-if="hasCodeOrCommentChange && (lineSets.oldSet.size || lineSets.newSet.size)" class="text-[11px] op-40 font-normal ml-2">
                高亮 {{ date === 'old' ? lineSets.oldSet.size : lineSets.newSet.size }} 行变化
              </span>
              <span v-else-if="program.change?.position" class="text-[11px] op-40 font-normal ml-2">
                变化在 /POS 点位区
              </span>
            </h2>
            <button class="btn" :class="showExplain && 'btn-active'" @click="showExplain = !showExplain">
              <span class="i-carbon-translate" /> 中文释义
            </button>
            <button v-if="hasCodeOrCommentChange" class="btn" :class="markChanges && 'btn-active'" @click="markChanges = !markChanges">
              <span class="i-carbon-magic-wand" /> 标记改动
            </button>
            <button class="btn" :class="showRaw && 'btn-active'" @click="showRaw = !showRaw">
              <span class="i-carbon-document" /> 原始 .ls
            </button>
          </div>

          <pre v-if="showRaw" class="font-mono text-xs leading-5 p-4 border border-base rounded-lg whitespace-pre-wrap break-words op-80">{{ text }}</pre>
          <CodeBlock
            v-else
            :lines="lines"
            :show-explain="showExplain"
            :robot="robot.id"
            :date="date"
            :program-map="programMap"
            :highlight="highlight"
            :changed-lines="changedLines"
            class="slide-enter"
            @select-line="selectLine"
            @select-pos="selectPos"
          />

          <p class="text-xs op-40 mt-3">
            点击行号可定位并分享该行；绿色程序名、标签和点位都可以点击。悬停 I/O 与寄存器可查看推断含义。
          </p>

          <template v-if="positionDelta">
            <h2 class="text-sm font-600 mt-12 mb-3">
              点位变化
            </h2>
            <PositionDelta :old="positionDelta.old" :new="positionDelta.new" />
          </template>

          <template v-if="tp?.positions.length">
            <h2 class="text-sm font-600 mt-12 mb-3">
              点位数据 <span class="op-40 font-normal">/POS · {{ tp.positions.length }} 个</span>
              <span v-if="baseline?.length" class="text-[11px] op-40 font-normal ml-2">带琥珀色边的点为本次改动</span>
            </h2>
            <PositionTable :positions="tp.positions" :baseline="baseline" :active="activePos" />
            <p class="text-xs op-40 mt-3">
              GP1 为机器人 TCP（mm / deg，UF 用户坐标系 / UT 工具坐标系），GP2 为伺服焊枪轴的张开量。
            </p>
          </template>
        </template>
      </article>

      <div v-else class="py-24 text-center op-50">
        找不到程序「{{ programId }}」
        <div class="text-xs mt-2">
          <RouterLink :to="`/r/${robot.id}`" class="underline">
            返回 {{ robot.label }} 程序列表
          </RouterLink>
        </div>
      </div>
    </div>
  </div>
</template>
