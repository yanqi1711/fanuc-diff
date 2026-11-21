<script setup lang="ts">
import ArtPlum from './components/ArtPlum.vue'
import NavBar from './components/NavBar.vue'
</script>

<template>
  <ArtPlum />
  <NavBar />
  <main class="px-4 sm:px-8 pb-24">
    <RouterView v-slot="{ Component }">
      <component :is="Component" />
    </RouterView>
  </main>
  <footer class="px-4 sm:px-8 pb-10 text-xs op-40 font-mono text-center">
    FANUC R-2000iC · V9.40P · 12 台机器人 · 2026-09-05 → 2026-11-02
  </footer>
</template>
