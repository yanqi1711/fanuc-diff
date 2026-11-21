import { useDark } from '@vueuse/core'
import { nextTick } from 'vue'

export const isDark = useDark()

/** toggle dark mode with a circular reveal (View Transitions API) */
export function toggleDark(event?: MouseEvent) {
  const reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches
  const doc = document as Document & { startViewTransition?: (cb: () => Promise<void>) => { ready: Promise<void> } }
  if (!doc.startViewTransition || reduce || !event) {
    isDark.value = !isDark.value
    return
  }
  const x = event.clientX
  const y = event.clientY
  const r = Math.hypot(Math.max(x, innerWidth - x), Math.max(y, innerHeight - y))
  const transition = doc.startViewTransition(async () => {
    isDark.value = !isDark.value
    await nextTick()
  })
  transition.ready.then(() => {
    const clip = [`circle(0px at ${x}px ${y}px)`, `circle(${r}px at ${x}px ${y}px)`]
    document.documentElement.animate(
      { clipPath: isDark.value ? [...clip].reverse() : clip },
      { duration: 400, easing: 'ease-out', pseudoElement: isDark.value ? '::view-transition-old(root)' : '::view-transition-new(root)' },
    )
  })
}
