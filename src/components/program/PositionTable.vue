<script setup lang="ts">
import type { TpPosition } from '../../lib/tp'
import { computed } from 'vue'

const props = defineProps<{
  positions: TpPosition[]
  baseline?: TpPosition[]
  active?: number
}>()

const AXES = ['X', 'Y', 'Z', 'W', 'P', 'R']

function signature(p: TpPosition) {
  return JSON.stringify(p.groups)
}

const baselineMap = computed(() => new Map((props.baseline ?? []).map(p => [p.id, p])))

const rows = computed(() => [...props.positions].sort((a, b) => a.id - b.id).map((p) => {
  const g1 = p.groups.find(g => g.group === 1)
  const g2 = p.groups.find(g => g.group === 2)
  const cart = g1 && AXES.every(a => a in g1.values)
  const old = baselineMap.value.get(p.id)
  return {
    id: p.id,
    comment: p.comment,
    uf: g1?.uf,
    ut: g1?.ut,
    config: g1?.config,
    values: cart ? AXES.map(a => g1!.values[a]) : Object.values(g1?.values ?? {}),
    joint: !cart,
    gun: g2 ? Object.values(g2.values)[0] : undefined,
    changed: !!old && signature(old) !== signature(p),
    added: !old && !!props.baseline,
    oldText: old ? formatPos(old) : '',
  }
}))

function formatPos(p: TpPosition) {
  const g1 = p.groups.find(g => g.group === 1)
  const g2 = p.groups.find(g => g.group === 2)
  if (!g1)
    return ''
  return `${AXES.filter(a => a in g1.values).map(a => `${a}=${g1.values[a].toFixed(1)}`).join(' ')}${g2 ? ` 枪=${Object.values(g2.values)[0]?.toFixed(1)}` : ''}`
}

function fmt(n?: number) {
  return n === undefined ? '' : n.toFixed(1)
}
</script>

<template>
  <div class="overflow-x-auto border border-base rounded-lg">
    <table class="w-full text-xs font-mono whitespace-nowrap">
      <thead class="op-50 text-left">
        <tr class="border-b border-base">
          <th class="px-3 py-2 font-normal">
            点
          </th>
          <th class="px-2 py-2 font-normal">
            UF/UT
          </th>
          <th v-for="a in AXES" :key="a" class="px-2 py-2 font-normal text-right">
            {{ a }}
          </th>
          <th class="px-2 py-2 font-normal">
            形态
          </th>
          <th class="px-3 py-2 font-normal text-right">
            枪轴 mm
          </th>
        </tr>
      </thead>
      <tbody>
        <tr
          v-for="r in rows"
          :id="`P${r.id}`"
          :key="r.id"
          class="border-b border-gray/8 last:border-b-0 transition-colors"
          :class="[
            active === r.id ? 'bg-[var(--c-hl-strong)]' : 'hover:bg-[var(--c-hl)]',
            r.changed ? 'bg-amber-500/5 shadow-[inset_2px_0_0_var(--c-accent)]' : '',
          ]"
          :title="r.changed ? `旧值：${r.oldText}` : ''"
        >
          <td class="px-3 py-1.5 tk-pos">
            P[{{ r.id }}]<span v-if="r.comment" class="op-60">:{{ r.comment }}</span>
          </td>
          <td class="px-2 py-1.5 op-60">
            {{ r.uf }}/{{ r.ut }}
          </td>
          <td v-for="(v, i) in AXES" :key="v" class="px-2 py-1.5 text-right op-80">
            {{ fmt(r.values[i]) }}
          </td>
          <td class="px-2 py-1.5 op-50">
            {{ r.joint ? '关节' : r.config }}
          </td>
          <td class="px-3 py-1.5 text-right op-80">
            {{ fmt(r.gun) }}
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>
