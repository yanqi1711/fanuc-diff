<script setup lang="ts">
import { computed } from 'vue'
import { tokenize } from '../../lib/tp'

const props = defineProps<{
  text: string
  program?: boolean
}>()

const tokens = computed(() => props.program ? tokenize(props.text) : null)
</script>

<template>
  <span v-if="tokens" class="whitespace-pre-wrap break-words"><span v-for="(t, i) in tokens" :key="i" :class="`tk-${t.kind}`">{{ t.text }}</span></span>
  <span v-else class="whitespace-pre-wrap break-words">{{ text }}</span>
</template>
