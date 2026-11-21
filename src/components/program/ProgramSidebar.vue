<script setup lang="ts">
import type { ProgramEntry } from '../../types'
import { computed, ref } from 'vue'
import { CATEGORIES, noteFor } from '../../data/notes'
import { programHref } from '../../lib/format'

function dotClass(status: string) {
  if (status === 'code' || status === 'position')
    return 'bg-amber-500'
  if (status === 'failed' || status === 'removed')
    return 'bg-rose-400'
  if (status === 'added')
    return 'bg-emerald-500'
  return 'bg-neutral-400'
}

function dotFor(p: ProgramEntry) {
  if (p.status === 'same' && !p.new?.converted && !p.old?.converted)
    return 'bg-rose-400'
  return dotClass(p.status)
}

const props = defineProps<{
  programs: ProgramEntry[]
  robot: string
  date: 'old' | 'new'
  activeId?: string
}>()
const emit = defineEmits<{ navigate: [] }>()

const query = ref('')

const groups = computed(() => {
  const q = query.value.trim().toLowerCase()
  const list = props.programs.filter(p => !q
    || p.id.includes(q)
    || noteFor(p.id, p.comment).title.toLowerCase().includes(q)
    || p.comment.toLowerCase().includes(q))
  const map = new Map<string, ProgramEntry[]>()
  for (const p of list) {
    const cat = noteFor(p.id, p.comment).category
    if (!map.has(cat))
      map.set(cat, [])
    map.get(cat)!.push(p)
  }
  return CATEGORIES.map(c => ({ ...c, items: map.get(c.id) ?? [] })).filter(g => g.items.length)
})
</script>

<template>
  <aside class="text-sm">
    <label class="flex items-center gap-2 px-2 py-1.5 mb-4 border border-base rounded focus-within:border-gray/50 transition">
      <span class="i-carbon-search op-50" />
      <input v-model="query" class="bg-transparent outline-none w-full text-sm" placeholder="搜索程序…">
    </label>
    <div v-for="g in groups" :key="g.id" class="mb-5">
      <div class="text-[11px] op-40 mb-1.5 px-2 font-mono">
        {{ g.title }}
      </div>
      <RouterLink
        v-for="p in g.items"
        :key="p.id"
        :to="programHref(robot, date, p.id)"
        class="flex items-center gap-2 px-2 py-1 rounded transition hover:bg-gray/8"
        :class="p.id === activeId ? 'bg-gray/12 op-100' : 'op-70 hover:op-100'"
        @click="emit('navigate')"
      >
        <span v-if="p.status !== 'same' || (!p.new?.converted && !p.old?.converted)" class="w-1.5 h-1.5 rounded-full shrink-0" :class="dotFor(p)" />
        <span class="font-mono text-[13px] truncate">{{ p.id }}</span>
        <span class="text-[11px] op-40 truncate ml-auto shrink-0 max-w-[46%]">{{ noteFor(p.id, p.comment).title }}</span>
      </RouterLink>
    </div>
  </aside>
</template>
