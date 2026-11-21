import {
  defineConfig,
  presetIcons,
  presetWind3,
  transformerDirectives,
  transformerVariantGroup,
} from 'unocss'

export default defineConfig({
  shortcuts: [
    ['btn', 'inline-flex items-center gap-1 px-2.5 py-1 rounded text-sm op-70 hover:op-100 hover:bg-gray/10 transition cursor-pointer select-none'],
    ['btn-active', 'op-100 bg-gray/12'],
    ['icon-btn', 'inline-flex items-center justify-center op-60 hover:op-100 transition cursor-pointer select-none'],
    ['chip', 'inline-flex items-center px-1.5 py-0.5 rounded text-xs font-mono bg-gray/10 op-80'],
    ['tag', 'inline-flex items-center px-2 py-0.5 rounded border border-base text-xs font-mono op-80'],
    ['card', 'block border border-base rounded-lg p-4 transition hover:bg-gray/5'],
    ['border-base', 'border-gray/20'],
    ['text-faint', 'op-50'],
    ['stat-num', 'text-2xl font-600 font-mono tabular-nums'],
    ['mono-label', 'text-xs op-45 font-mono tracking-wide uppercase'],
  ],
  theme: {
    fontFamily: {
      sans: '"Inter", "PingFang SC", "Microsoft YaHei", "Noto Sans SC", ui-sans-serif, system-ui, sans-serif',
      mono: '"DM Mono", "JetBrains Mono", "Cascadia Mono", Consolas, "Microsoft YaHei", monospace',
    },
  },
  presets: [
    presetWind3(),
    presetIcons({
      scale: 1.1,
      extraProperties: { 'display': 'inline-block', 'vertical-align': 'middle' },
      collections: {
        carbon: () => import('@iconify-json/carbon/icons.json').then(i => i.default as any),
      },
    }),
  ],
  transformers: [transformerDirectives(), transformerVariantGroup()],
})
