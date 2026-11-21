<script setup lang="ts">
import type { IndexData, RobotSummary } from '../types'
import { computed, onMounted, ref } from 'vue'
import { RouterLink } from 'vue-router'
import { loadIndex } from '../lib/data'
import { dateLabel, fmtSize, programHref, statusBadge, statusLabel } from '../lib/format'

const data = ref<IndexData>()
const error = ref('')

onMounted(async () => {
  try {
    data.value = await loadIndex()
  }
  catch (e) {
    error.value = String(e)
  }
})

const topStat = computed(() => {
  const t = data.value?.totals
  if (!t)
    return []
  return [
    { v: t.robots, k: '台机器人' },
    { v: t.backups, k: '份备份' },
    { v: t.programs, k: '个 TP 程序' },
    { v: t.changedFiles, k: '个变更文件' },
    { v: t.logicPrograms, k: '处逻辑改动' },
    { v: t.positionPrograms, k: '处点位移位' },
  ]
})

const maxPrograms = computed(() => Math.max(1, ...(data.value?.robots.map(r => r.stats.changed) ?? [1])))

function pct(n: number) {
  return `${Math.max(2, Math.round((n / maxPrograms.value) * 100))}%`
}

function changesOf(r: RobotSummary) {
  return [
    { k: '逻辑', n: r.stats.logic, cls: 'badge-code' },
    { k: '点位', n: r.stats.position, cls: 'badge-code' },
    { k: '注释', n: r.stats.comment, cls: 'badge-mute' },
    { k: '配置', n: r.stats.binaryChanged + r.stats.textChanged, cls: 'badge-info' },
  ]
}

const robotOrder = computed(() => data.value?.robots.map(r => r.id) ?? [])

function dotClass(status?: string) {
  if (!status)
    return 'op-10'
  if (status === 'code')
    return 'bg-amber-500'
  if (status === 'position')
    return 'bg-sky-500'
  if (status === 'comment')
    return 'bg-neutral-400'
  if (status === 'meta')
    return 'bg-neutral-300 dark:bg-neutral-700'
  return 'bg-rose-400'
}

const sample = [
  { no: 1, code: 'TIMER[10]=RESET', exp: '复位 10 号计时器' },
  { no: 4, code: 'WAIT GI[6]=21', exp: '等待 PLC 程序号 = 21' },
  { no: 7, code: 'CALL SEGMENT(1)', exp: '驶入工作位 1 并置位完成信号' },
  { no: 12, code: 'CALL X13_OP10_40_WELD', exp: '调用工位焊接轨迹子程序' },
]
</script>

<template>
  <div class="max-w-[1120px] mx-auto pt-10 sm:pt-16">
    <div v-if="error" class="card text-sm text-rose-500">
      数据加载失败：{{ error }}
    </div>

    <template v-if="data">
      <!-- hero -->
      <section class="relative slide-enter-content">
        <span class="bg-title font-mono">FLEET</span>
        <p class="text-xs op-50 font-mono">
          data/7 → data/11.21 · FANUC V9.40P · {{ data.totals.robots }} 台机器人
        </p>
        <h1 class="text-4xl sm:text-6xl font-800 mt-2 mb-0 tracking-tight leading-[1.05]">
          {{ data.totals.robots }} 台机器人<br class="sm:hidden">，两次备份
        </h1>
        <div class="prose mt-6">
          <p>
            从 <strong>{{ dateLabel(data.old.date) }}</strong> 到 <strong>{{ dateLabel(data.new.date) }}</strong>，
            FANUC 点焊 / 搬运机器人的控制器备份被完整保留下来。
            这里把二进制 <code>.tp</code> 程序反编译成可读的 <code>.ls</code>，
            再逐行合并、着色、翻译，让两次备份之间每一个<strong>改动的指令</strong>都能被看见。
          </p>
        </div>
        <div class="flex flex-wrap items-center gap-3 mt-7">
          <RouterLink to="/changes?type=all" class="inline-flex items-center gap-2 px-4 py-2 rounded-md bg-[var(--c-fg)] text-[var(--c-bg)] text-sm font-500 hover:op-90 transition">
            浏览全部变更 <span class="i-carbon-arrow-right" />
          </RouterLink>
          <RouterLink to="/r/r1" class="inline-flex items-center gap-2 px-4 py-2 rounded-md border border-base text-sm op-75 hover:op-100 hover:bg-gray/6 transition">
            从 R1 开始 <span class="i-carbon-arrow-up-right" />
          </RouterLink>
        </div>
        <div class="grid grid-cols-2 sm:grid-cols-6 gap-y-5 gap-x-6 mt-12 pb-8 border-b border-base">
          <div v-for="s in topStat" :key="s.k">
            <div class="stat-num">
              {{ s.v }}
            </div>
            <div class="text-xs op-50">
              {{ s.k }}
            </div>
          </div>
        </div>
      </section>

      <!-- fleet grid -->
      <section class="mt-20">
        <div class="flex items-baseline justify-between mb-6">
          <div>
            <div class="mono-label">
              01 / 机器人群像
            </div>
            <h2 class="text-2xl font-700 mt-1">
              谁改了，改了多少
            </h2>
          </div>
          <div class="text-xs op-40 hidden sm:block">
            点击机器卡进入程序与文件
          </div>
        </div>

        <div class="grid sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 2xl:grid-cols-5 gap-4">
          <RouterLink
            v-for="(r, i) in data.robots"
            :key="r.id"
            :to="`/r/${r.id}`"
            class="group border border-base rounded-xl p-4 hover:bg-gray/4 hover:border-gray/35 transition flex flex-col slide-enter"
            :style="{ '--enter-stage': i + 1 }"
          >
            <div class="flex items-start justify-between gap-3">
              <div class="flex items-baseline gap-2.5">
                <span class="text-3xl font-750 font-mono tracking-tight">{{ r.label }}</span>
                <span class="text-xs op-40">{{ r.ops.length ? r.ops.map(o => `OP${o}`).join(' / ') : '无工位号' }}</span>
              </div>
              <span class="badge badge-mute">{{ r.group }}</span>
            </div>
            <div class="flex flex-wrap gap-1 mt-2">
              <span v-for="role in r.roles" :key="role" class="text-xs op-55">{{ role }}</span>
              <span class="text-xs op-25">·</span>
              <span class="text-xs op-40 font-mono">{{ r.new.programs }} 程序</span>
            </div>

            <div class="flex items-end justify-between mt-5">
              <div>
                <div class="text-4xl font-650 font-mono tnum leading-none">
                  {{ r.stats.changed }}
                </div>
                <div class="text-xs op-50 mt-1">
                  个文件变更
                </div>
              </div>
              <span class="text-[11px] op-35 font-mono text-right leading-4 whitespace-nowrap">
                {{ r.old.date }}<br>→ {{ r.new.date }}
              </span>
            </div>

            <div class="h-1.5 rounded-full bg-gray/8 mt-4 overflow-hidden flex">
              <div v-for="c in changesOf(r)" :key="c.k" class="h-full opacity-80" :class="c.cls" :style="{ width: pct(c.n) }" :title="`${c.k} ${c.n}`" />
            </div>
            <div class="grid grid-cols-4 gap-2 mt-3 text-[11px]">
              <div v-for="c in changesOf(r)" :key="c.k">
                <div class="font-mono tnum" :class="c.n ? 'op-80' : 'op-30'">
                  {{ c.n }}
                </div>
                <div class="op-35">
                  {{ c.k }}
                </div>
              </div>
            </div>

            <div class="mt-4 pt-3 border-t border-gray/10 space-y-1.5 min-h-[3.3rem]">
              <div v-for="t in r.topChanges.slice(0, 2)" :key="t.id" class="flex items-center gap-2 text-xs">
                <span class="font-mono truncate">{{ t.id }}</span>
                <span class="badge" :class="statusBadge(t.status)">{{ statusLabel(t.status) }}</span>
                <span v-if="t.change" class="ml-auto font-mono tnum shrink-0 op-45">
                  <template v-if="t.change.code">
                    <span class="st-del">−{{ t.change.codeDel ?? 0 }}</span>
                    <span class="st-add ml-1">+{{ t.change.codeAdd ?? 0 }}</span>
                  </template>
                  <template v-else-if="t.change.position">
                    <span class="st-chg">±{{ t.change.add }}</span>
                    <span class="op-30 ml-1">行</span>
                  </template>
                  <template v-else>
                    <span class="op-40">注释</span>
                  </template>
                </span>
              </div>
              <div v-if="!r.topChanges.length" class="text-xs op-30">
                仅配置 / 日志文件变化
              </div>
            </div>
            <div class="mt-3 flex items-center justify-between text-[11px] op-35">
              <span>{{ fmtSize(r.old.bytes) }} → {{ fmtSize(r.new.bytes) }}</span>
              <span class="i-carbon-arrow-up-right group-hover:op-80 transition" />
            </div>
          </RouterLink>
        </div>
      </section>

      <!-- hot matrix -->
      <section class="mt-20">
        <div class="flex items-baseline justify-between mb-6">
          <div>
            <div class="mono-label">
              02 / 全厂热点
            </div>
            <h2 class="text-2xl font-700 mt-1">
              同一段程序，在哪些机器人上被改过
            </h2>
          </div>
          <div class="text-xs op-40 hidden sm:block">
            行 = 程序 · 列 = 机器人
          </div>
        </div>
        <div class="border border-base rounded-xl p-4 sm:p-5">
          <div class="scroll-x">
            <table class="w-full text-xs border-separate border-spacing-0 min-w-[760px]">
              <thead>
                <tr>
                  <th class="text-left font-500 pb-3 pr-3 sticky left-0 bg-[var(--c-bg)] z-10">
                    程序
                  </th>
                  <th v-for="id in robotOrder" :key="id" class="font-mono font-400 pb-3 px-1 text-center op-40">
                    {{ id.toUpperCase() }}
                  </th>
                  <th class="font-400 pb-3 pl-3 text-right op-40">
                    机器人数
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr v-for="h in data.hotPrograms" :key="h.id" class="group">
                  <td class="py-1.5 pr-3 sticky left-0 bg-[var(--c-bg)] z-10">
                    <div class="flex items-center gap-2">
                      <span class="font-mono text-[12px]">{{ h.id }}</span>
                      <span class="text-[10px] op-30 hidden sm:inline">{{ h.name }}</span>
                    </div>
                  </td>
                  <td v-for="id in robotOrder" :key="id" class="py-1.5 px-1 text-center">
                    <RouterLink
                      v-if="h.byRobot[id]"
                      :to="programHref(id, 'new', h.id)"
                      class="inline-block w-2 h-2 rounded-full transition hover:scale-150"
                      :class="dotClass(h.byRobot[id])"
                      :title="`${id.toUpperCase()} · ${statusLabel(h.byRobot[id])}`"
                    />
                    <span v-else class="inline-block w-2 h-2 rounded-full bg-gray/8" />
                  </td>
                  <td class="py-1.5 pl-3 text-right font-mono tnum op-60">
                    {{ h.robots.length }}
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="flex flex-wrap items-center gap-x-5 gap-y-2 mt-4 pt-3 border-t border-gray/10 text-[11px] op-50">
            <span class="flex items-center gap-1.5"><span class="w-2 h-2 rounded-full bg-amber-500" /> 逻辑</span>
            <span class="flex items-center gap-1.5"><span class="w-2 h-2 rounded-full bg-sky-500" /> 点位</span>
            <span class="flex items-center gap-1.5"><span class="w-2 h-2 rounded-full bg-neutral-400" /> 注释</span>
            <span class="flex items-center gap-1.5"><span class="w-2 h-2 rounded-full bg-neutral-300 dark:bg-neutral-700" /> 时间戳</span>
            <span class="ml-auto op-35">点击圆点打开该机器人上的程序</span>
          </div>
        </div>
      </section>

      <!-- translation pipeline -->
      <section class="mt-20">
        <div class="mono-label">
          03 / 转译管线
        </div>
        <h2 class="text-2xl font-700 mt-1 mb-2">
          从二进制 `.tp` 到一行可读的指令
        </h2>
        <p class="text-sm op-60 max-w-[68ch] mb-6">
          网站的数据来自原始备份，不在浏览器里猜测格式：先在装有 Roboguide 的机器上用
          <code class="font-mono text-xs">printtp</code> 反编译，再按 GB18030 解码并修复丢失的
          <code class="font-mono text-xs">0xFE</code> 字节，最后由 TP 分词器逐行上色、翻译、对比。
        </p>
        <div class="grid sm:grid-cols-2 lg:grid-cols-4 gap-3">
          <div class="border border-base rounded-lg p-4">
            <span class="i-carbon-document-binary text-xl op-50" />
            <div class="text-sm font-600 mt-2">
              原始备份
            </div>
            <div class="text-xs op-50 mt-1 leading-5">
              两次备份的全部 <code>.tp</code> 二进制程序，按内容哈希去重后转译。
            </div>
          </div>
          <div class="border border-base rounded-lg p-4">
            <span class="i-carbon-tool-box text-xl op-50" />
            <div class="text-sm font-600 mt-2">
              printtp 反编译
            </div>
            <div class="text-xs op-50 mt-1 leading-5">
              Roboguide V9.40 的 <code>WinOLPC</code> 把 TP 还原成 ASCII <code>.ls</code>，保留行号、标签与点位。
            </div>
          </div>
          <div class="border border-base rounded-lg p-4">
            <span class="i-carbon-character-whole-number text-xl op-50" />
            <div class="text-sm font-600 mt-2">
              解码与修复
            </div>
            <div class="text-xs op-50 mt-1 leading-5">
              GB18030 解码中文注释，修复 printtp 在“服 / 件”等字上丢失的字节，保证注释可读。
            </div>
          </div>
          <div class="border border-base rounded-lg p-4">
            <span class="i-carbon-compare text-xl op-50" />
            <div class="text-sm font-600 mt-2">
              逐行对比
            </div>
            <div class="text-xs op-50 mt-1 leading-5">
              忽略行尾空白与时间戳，区分逻辑、点位、注释变化；再给出逐行中文释义。
            </div>
          </div>
        </div>

        <div class="mt-5 border border-base rounded-xl overflow-hidden">
          <div class="flex items-center gap-2 px-4 py-2 border-b border-base text-[11px] font-mono op-50">
            <span class="w-2 h-2 rounded-full bg-rose-400/60" />
            <span class="w-2 h-2 rounded-full bg-amber-400/60" />
            <span class="w-2 h-2 rounded-full bg-emerald-400/60" />
            <span class="ml-2">style21.ls · 程序号 21 · 主流程</span>
            <RouterLink :to="programHref('r1', 'new', 'style21')" class="ml-auto hover:op-100 flex items-center gap-1">
              打开完整程序 <span class="i-carbon-arrow-up-right" />
            </RouterLink>
          </div>
          <div class="p-4 font-mono text-[12.5px] leading-7 overflow-x-auto">
            <div v-for="s in sample" :key="s.no" class="flex gap-4 min-w-max">
              <span class="w-6 text-right op-25">{{ s.no }}</span>
              <span class="whitespace-pre"><span class="tk-kw">{{ s.code.split(' ')[0] }}</span><span class="tk-text">{{ s.code.slice(s.code.split(' ')[0].length) }}</span></span>
              <span class="font-sans text-[12px] op-45">{{ s.exp }}</span>
            </div>
          </div>
        </div>
        <p class="text-xs op-35 mt-3">
          目前 {{ data.totals.converted }} 个程序可读；{{ data.totals.failed }} 个程序因缺少点焊 / PC 接口字典未能反编译，仍会显示从二进制中提取的字符串。
        </p>
      </section>

      <!-- reading guide -->
      <section class="mt-20 grid sm:grid-cols-3 gap-4">
        <RouterLink to="/changes?type=all" class="card group">
          <div class="flex items-center justify-between">
            <span class="mono-label">变更</span>
            <span class="i-carbon-arrow-up-right op-30 group-hover:op-80 transition" />
          </div>
          <div class="text-sm font-600 mt-2">
            全部变更文件
          </div>
          <p class="text-xs op-50 mt-1 leading-5">
            按机器人与变化类型筛选，直接跳到某一行差异。
          </p>
        </RouterLink>
        <RouterLink to="/r/r1" class="card group">
          <div class="flex items-center justify-between">
            <span class="mono-label">程序</span>
            <span class="i-carbon-arrow-up-right op-30 group-hover:op-80 transition" />
          </div>
          <div class="text-sm font-600 mt-2">
            单台机器人的全部程序
          </div>
          <p class="text-xs op-50 mt-1 leading-5">
            从 STYLE 主程序到焊接、修磨、搬运子程序，逐行带中文释义。
          </p>
        </RouterLink>
        <RouterLink to="/compare" class="card group">
          <div class="flex items-center justify-between">
            <span class="mono-label">对比</span>
            <span class="i-carbon-arrow-up-right op-30 group-hover:op-80 transition" />
          </div>
          <div class="text-sm font-600 mt-2">
            跨机器人对照
          </div>
          <p class="text-xs op-50 mt-1 leading-5">
            两台机器人之间同名程序的差异，用来发现复制粘贴后改漏的地方。
          </p>
        </RouterLink>
      </section>

      <p class="text-xs op-30 mt-16 text-center font-mono">
        generated {{ new Date(data.generatedAt).toLocaleString('zh-CN') }} · 原始备份字节保持不变
      </p>
    </template>

    <div v-else-if="!error" class="space-y-4 pt-10">
      <div class="skeleton h-10 w-64" />
      <div class="skeleton h-40 w-full" />
      <div class="grid sm:grid-cols-3 gap-4">
        <div v-for="i in 6" :key="i" class="skeleton h-48" />
      </div>
    </div>
  </div>
</template>
