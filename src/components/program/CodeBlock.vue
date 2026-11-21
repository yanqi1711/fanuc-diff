<script setup lang="ts">
import type { RenderedLine } from '../../lib/render'
import type { Token } from '../../lib/tp'
import { computed } from 'vue'
import { REGISTER_NOTES, SIGNAL_NOTES } from '../../data/signals'

interface CallInfo {
  id: string
  title: string
  brief: string
}

const props = defineProps<{
  lines: RenderedLine[]
  showExplain: boolean
  robot: string
  date: 'old' | 'new'
  programMap: Record<string, CallInfo>
  highlight?: number
  changedLines?: Set<number>
}>()

const emit = defineEmits<{
  selectLine: [no: number]
  selectPos: [id: number]
}>()

const labelLines = computed(() => {
  const map = new Map<string, number>()
  for (const l of props.lines) {
    if (l.labelDef)
      map.set(l.labelDef, l.no)
  }
  return map
})

function tokenTitle(t: Token) {
  if (t.kind === 'io' && t.ref) {
    const m = t.ref.match(/^(\w+)\[(\d+)\]$/)
    const n = m && SIGNAL_NOTES[m[1]]?.[m[2]]
    return n ? `${n.meaning}${n.warn ? `\n⚠ ${n.warn}` : ''}` : undefined
  }
  if (t.kind === 'reg' && t.ref)
    return REGISTER_NOTES[t.ref]
  if (t.kind === 'call' && t.ref) {
    const p = props.programMap[t.ref.toUpperCase()]
    return p ? `${p.title}：${p.brief}` : 'KAREL 内置程序（不在备份中）'
  }
  if (t.kind === 'lbl' && t.ref && labelLines.value.has(t.ref))
    return `跳到第 ${labelLines.value.get(t.ref)} 行`
  if (t.kind === 'pos')
    return '点击查看点位数据'
  return undefined
}

function isLink(t: Token, line: RenderedLine) {
  if (t.kind === 'call')
    return !!props.programMap[t.ref ?? '']
  if (t.kind === 'lbl')
    return !!t.ref && labelLines.value.has(t.ref) && line.labelDef !== t.ref
  if (t.kind === 'pos')
    return /^\d+$/.test(t.ref ?? '')
  return false
}

function onToken(t: Token) {
  if (t.kind === 'lbl' && t.ref) {
    const n = labelLines.value.get(t.ref)
    if (n)
      emit('selectLine', n)
  }
  else if (t.kind === 'pos' && t.ref) {
    emit('selectPos', Number(t.ref))
  }
}
</script>

<template>
  <div class="font-mono text-[13px] leading-6 border border-base rounded-lg overflow-hidden">
    <div
      v-for="l in lines"
      :id="`L${l.no}`"
      :key="l.no"
      class="group grid grid-cols-[2.75rem_minmax(0,1fr)] border-b border-gray/8 last:border-b-0 transition-colors"
      :class="[
        showExplain ? 'lg:grid-cols-[2.75rem_minmax(0,1.15fr)_minmax(0,1fr)]' : '',
        highlight === l.no ? 'bg-[var(--c-hl-strong)]' : 'hover:bg-[var(--c-hl)]',
        changedLines?.has(l.no) ? 'line-changed' : '',
        l.labelDef ? 'border-t border-t-gray/15' : '',
      ]"
    >
      <button
        class="text-right pr-3 select-none op-30 hover:op-80 transition text-xs pt-[3px] cursor-pointer"
        :title="`复制第 ${l.no} 行链接`"
        @click="emit('selectLine', l.no)"
      >
        {{ l.no }}
      </button>

      <div class="py-px pr-3 whitespace-pre-wrap break-words" :class="[l.disabled && 'op-40 line-through decoration-gray/40']">
        <div v-for="(row, ri) in l.rows" :key="ri" :class="ri > 0 && 'pl-4'">
          <span v-if="ri === 0 && l.motion" class="tk-motion mr-1.5">{{ l.motion }}</span><span v-if="ri === 0 && l.disabled" class="op-60 mr-1">//</span><span v-if="ri > 0" class="tk-op mr-1">:</span><template v-for="(t, ti) in row" :key="ti"><span
            v-if="isLink(t, l) && t.kind !== 'call'"
            :class="`tk-${t.kind} tk-link`"
            :title="tokenTitle(t)"
            @click="onToken(t)"
          >{{ t.text }}</span><RouterLink
            v-else-if="isLink(t, l)"
            :to="`/p/${robot}/${date}/${programMap[t.ref!.toUpperCase()].id}`"
            :class="`tk-${t.kind} tk-link`"
            :title="tokenTitle(t)"
          >{{ t.text }}</RouterLink><span
            v-else
            :class="`tk-${t.kind}`"
            :title="tokenTitle(t)"
          >{{ t.text }}</span></template>
        </div>
      </div>

      <div
        v-if="showExplain && (l.explain || l.note)"
        class="col-start-2 lg:col-start-auto font-sans text-[12.5px] leading-6 pb-1 lg:py-px pr-3 lg:pl-3 lg:border-l lg:border-gray/10"
      >
        <div v-if="l.note" class="flex gap-1.5 text-[var(--c-fg)]">
          <span class="i-carbon-pin text-xs mt-1.5 shrink-0 text-amber-600 dark:text-amber-400" />
          <span>{{ l.note }}</span>
        </div>
        <div v-if="l.explain" class="op-55" :class="l.isComment && 'italic'">
          {{ l.explain }}
        </div>
      </div>
    </div>
  </div>
</template>
