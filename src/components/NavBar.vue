<script setup lang="ts">
import { useRoute } from 'vue-router'
import { isDark, toggleDark } from '../composables/useTheme'

const route = useRoute()

const links = [
  { to: '/', label: '总览', icon: 'i-carbon-flow' },
  { to: '/changes', label: '变更', icon: 'i-carbon-compare' },
  { to: '/r/r1', label: '程序', icon: 'i-carbon-code', match: /^\/r\/|^\/p\// },
  { to: '/diff/r1', label: '对比', icon: 'i-carbon-split-screen', match: /^\/diff\/|^\/compare/ },
]

function active(to: string, match?: RegExp) {
  if (match)
    return match.test(route.path)
  return route.path === to
}
</script>

<template>
  <header class="sticky top-0 z-40 h-16 flex items-center justify-between px-4 sm:px-8 bg-[var(--c-bg)]/80 backdrop-blur">
    <RouterLink to="/" class="flex items-center gap-2 font-mono text-sm op-80 hover:op-100 transition" title="首页">
      <span class="i-carbon-circle-dash text-lg" />
      <span class="hidden sm:inline">fanuc<span class="op-40">.diff</span></span>
    </RouterLink>
    <nav class="flex items-center gap-4 sm:gap-6 text-sm">
      <RouterLink
        v-for="l in links"
        :key="l.to"
        :to="l.to"
        class="flex items-center gap-1.5 transition"
        :class="active(l.to, l.match) ? 'op-100' : 'op-55 hover:op-100'"
        :title="l.label"
      >
        <span :class="l.icon" class="sm:hidden" />
        <span class="hidden sm:inline">{{ l.label }}</span>
      </RouterLink>
      <button class="icon-btn" :title="isDark ? '切换到浅色' : '切换到深色'" @click="toggleDark($event)">
        <span :class="isDark ? 'i-carbon-moon' : 'i-carbon-sun'" />
      </button>
    </nav>
  </header>
</template>
