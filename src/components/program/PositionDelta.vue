<script setup lang="ts">
import type { TpPosition } from '../../lib/tp'
import { computed } from 'vue'

const props = defineProps<{
  old: TpPosition[]
  new: TpPosition[]
}>()

const AXES = ['X', 'Y', 'Z', 'W', 'P', 'R']

const rows = computed(() => {
  const oldMap = new Map(props.old.map(p => [p.id, p]))
  const newMap = new Map(props.new.map(p => [p.id, p]))
  const ids = [...new Set([...oldMap.keys(), ...newMap.keys()])].sort((a, b) => a - b)
  return ids.map((id) => {
    const o = oldMap.get(id)
    const n = newMap.get(id)
    const og = o?.groups.find(g => g.group === 1)
    const ng = n?.groups.find(g => g.group === 1)
    const og2 = o?.groups.find(g => g.group === 2)
    const ng2 = n?.groups.find(g => g.group === 2)
    const delta: Record<string, { from?: number, to?: number, d?: number }> = {}
    for (const a of AXES) {
      const from = og?.values[a]
      const to = ng?.values[a]
      if (from != null || to != null)
        delta[a] = { from, to, d: from != null && to != null ? to - from : undefined }
    }
    const gunFrom = og2 ? Object.values(og2.values)[0] : undefined
    const gunTo = ng2 ? Object.values(ng2.values)[0] : undefined
    const moved = Object.values(delta).some(a => a.d != null && Math.abs(a.d) > 0.0001)
    const gunMoved = gunFrom != null && gunTo != null && Math.abs(gunTo - gunFrom) > 0.0001
    return { id, comment: n?.comment ?? o?.comment, delta, gunFrom, gunTo, gunMoved, state: !o ? '新增' : !n ? '删除' : moved || gunMoved ? '移动' : '相同' }
  }).filter(r => r.state !== '相同')
})

function fmt(n?: number) {
  return n === undefined ? '' : n.toFixed(1)
}
</script>

<template>
  <div v-if="rows.length" class="border border-base rounded-lg overflow-x-auto">
    <div class="px-3 py-2 border-b border-base text-xs op-50 flex items-center gap-2">
      <span class="i-carbon-move text-amber-600 dark:text-amber-400" />
      点位变化
      <span class="op-40">{{ rows.length }} 个点</span>
    </div>
    <table class="w-full text-xs font-mono whitespace-nowrap">
      <thead class="op-45 text-left">
        <tr class="border-b border-base">
          <th class="px-3 py-2 font-normal">点</th>
          <th class="px-2 py-2 font-normal">状态</th>
          <th v-for="a in AXES" :key="a" class="px-2 py-2 font-normal text-right">{{ a }} Δ</th>
          <th class="px-3 py-2 font-normal text-right">枪轴 Δ</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="r in rows" :key="r.id" class="border-b border-gray/8 last:border-b-0">
          <td class="px-3 py-1.5 tk-pos">
            P[{{ r.id }}]<span v-if="r.comment" class="op-50">:{{ r.comment }}</span>
          </td>
          <td class="px-2 py-1.5">
            <span class="badge" :class="r.state === '新增' ? 'badge-add' : r.state === '删除' ? 'badge-del' : 'badge-code'">{{ r.state }}</span>
          </td>
          <td v-for="a in AXES" :key="a" class="px-2 py-1.5 text-right" :title="r.delta[a] ? `${fmt(r.delta[a].from)} → ${fmt(r.delta[a].to)}` : ''">
            <span v-if="r.delta[a]?.d != null && Math.abs(r.delta[a].d!) > 0.0001" :class="r.delta[a].d! > 0 ? 'st-add' : 'st-del'">
              {{ r.delta[a].d! > 0 ? '+' : '' }}{{ r.delta[a].d!.toFixed(1) }}
            </span>
            <span v-else class="op-20">·</span>
          </td>
          <td class="px-3 py-1.5 text-right">
            <span v-if="r.gunMoved" :class="r.gunTo! > r.gunFrom! ? 'st-add' : 'st-del'">
              {{ r.gunTo! > r.gunFrom! ? '+' : '' }}{{ (r.gunTo! - r.gunFrom!).toFixed(1) }}
            </span>
            <span v-else class="op-20">·</span>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>
