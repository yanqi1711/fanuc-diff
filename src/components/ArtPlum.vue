<script setup lang="ts">
// Generative plum-branch background (antfu.me inspired), drawn on a canvas.
import { useWindowSize } from '@vueuse/core'
import { onMounted, onUnmounted, useTemplateRef, watch } from 'vue'

const el = useTemplateRef<HTMLCanvasElement>('canvas')
const { width, height } = useWindowSize()

const STEP = 6
const MIN_BRANCH = 30
const r180 = Math.PI
const r90 = Math.PI / 2
const r15 = Math.PI / 12

let raf = 0

function start() {
  const canvas = el.value
  if (!canvas)
    return
  cancelAnimationFrame(raf)
  const dpr = window.devicePixelRatio || 1
  const w = width.value
  const h = height.value
  canvas.width = w * dpr
  canvas.height = h * dpr
  canvas.style.width = `${w}px`
  canvas.style.height = `${h}px`
  const ctx = canvas.getContext('2d')!
  ctx.scale(dpr, dpr)
  ctx.clearRect(0, 0, w, h)
  ctx.lineWidth = 1
  ctx.strokeStyle = '#88888825'

  type Step = () => void
  let steps: Step[] = []
  let prev: Step[] = []

  const inBounds = (x: number, y: number) => x >= -100 && x <= w + 100 && y >= -100 && y <= h + 100

  function grow(x: number, y: number, rad: number, counter = { v: 0 }) {
    const len = Math.random() * STEP
    counter.v++
    const nx = x + len * Math.cos(rad)
    const ny = y + len * Math.sin(rad)
    ctx.beginPath()
    ctx.moveTo(x, y)
    ctx.lineTo(nx, ny)
    ctx.stroke()

    const r1 = rad + Math.random() * r15
    const r2 = rad - Math.random() * r15
    if (!inBounds(nx, ny))
      return
    const rate = counter.v <= MIN_BRANCH ? 0.8 : 0.5
    if (Math.random() < rate)
      steps.push(() => grow(nx, ny, r1, counter))
    if (Math.random() < rate)
      steps.push(() => grow(nx, ny, r2, counter))
  }

  const rand = () => Math.random() * 0.6 + 0.2
  steps = [
    () => grow(rand() * w, -5, r90),
    () => grow(rand() * w, h + 5, -r90),
    () => grow(-5, rand() * h, 0),
    () => grow(w + 5, rand() * h, r180),
  ]
  if (w < 500)
    steps = steps.slice(0, 2)

  const reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches
  let last = performance.now()
  const frame = () => {
    if (reduce) {
      let guard = 0
      while (steps.length && guard++ < 4000) {
        prev = steps
        steps = []
        prev.forEach(fn => Math.random() < 0.5 ? steps.push(fn) : fn())
      }
      return
    }
    if (performance.now() - last < 1000 / 40) {
      raf = requestAnimationFrame(frame)
      return
    }
    last = performance.now()
    prev = steps
    steps = []
    if (!prev.length)
      return
    prev.forEach(fn => Math.random() < 0.5 ? steps.push(fn) : fn())
    raf = requestAnimationFrame(frame)
  }
  frame()
}

onMounted(start)
onUnmounted(() => cancelAnimationFrame(raf))
let timer: ReturnType<typeof setTimeout>
watch([width, height], () => {
  clearTimeout(timer)
  timer = setTimeout(start, 300)
})
</script>

<template>
  <div
    class="pointer-events-none fixed inset-0 z--1 print:hidden"
    style="mask-image: radial-gradient(circle, transparent 35%, black 100%); -webkit-mask-image: radial-gradient(circle, transparent 35%, black 100%)"
  >
    <canvas ref="canvas" />
  </div>
</template>
