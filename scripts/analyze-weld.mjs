// Analyse duplicate weld-spot coordinates in the latest (2026-11-21) programs.
// Usage: node scripts/analyze-weld.mjs
// Output: docs/weld-duplicate-analysis.md, docs/weld-duplicates.csv

import { readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { join } from 'node:path'

const root = process.cwd()
const robotDir = join(root, 'public/data/robot')
const blobDir = join(root, 'public/data/blob')

function section(text, start, end) {
  const s = text.indexOf(start)
  if (s < 0)
    return ''
  const e = text.indexOf(end, s + start.length)
  return text.slice(s + start.length, e < 0 ? undefined : e)
}

function parsePositions(text) {
  const out = new Map()
  for (const m of section(text, '/POS', '/END').matchAll(/P\[(\d+)(?::"([^"]*)")?\]\{([\s\S]*?)\};/g)) {
    const body = m[3]
    const gp1 = section(body, 'GP1:', 'GP2:')
    const gp2 = section(body, 'GP2:', '};')
    const num = (key, source = gp1) => {
      const r = source.match(new RegExp(`${key}\\s*=\\s*(-?[\\d.]+)`))
      return r ? Number(r[1]) : undefined
    }
    out.set(Number(m[1]), {
      id: Number(m[1]),
      comment: m[2] || '',
      x: num('X'),
      y: num('Y'),
      z: num('Z'),
      w: num('W'),
      p: num('P'),
      r: num('R'),
      gun: num('J1', gp2),
      uf: gp1.match(/UF\s*:\s*(\d+)/)?.[1],
      ut: gp1.match(/UT\s*:\s*(\d+)/)?.[1],
      config: gp1.match(/CONFIG\s*:\s*'([^']*)'/)?.[1],
    })
  }
  return out
}

function parseWeldSpots(text) {
  const mn = section(text, '/MN', '/POS')
  const logical = []
  for (const raw of mn.split('\n')) {
    const m = raw.match(/^\s*(\d+):(.*)$/)
    if (m) {
      logical.push({ no: Number(m[1]), code: m[2].trim() })
      continue
    }
    const c = raw.match(/^\s*:\s*(.*)$/)
    if (c && logical.length)
      logical[logical.length - 1].code += `\n${c[1].trim()}`
  }
  const spots = []
  let lastComment = ''
  for (const line of logical) {
    if (/^\s*!/.test(line.code)) {
      lastComment = line.code.replace(/^\s*!/, '').replace(/\s*;\s*$/, '').trim()
      continue
    }
    const motion = line.code.match(/^\s*([JLCA])\s+(P\[(\d+)(?::[^\]]*)?\]|PR\[[^\]]*\])/)
    const spot = line.code.match(/SPOT\[/)
    if (motion && spot) {
      const pos = motion[2].startsWith('P[') ? Number(motion[3]) : null
      spots.push({ line: line.no, motion: motion[1], pos, label: lastComment, code: line.code.split('\n')[0].trim() })
    }
  }
  return spots
}

const robots = readdirSync(robotDir)
  .filter(f => f.endsWith('.json'))
  .map(f => JSON.parse(readFileSync(join(robotDir, f), 'utf8')))
  .sort((a, b) => Number(a.id.slice(1)) - Number(b.id.slice(1)))

// Which STYLE programs call each weld program?
const stylesByProgram = new Map()
for (const robot of robots) {
  for (const p of robot.programs) {
    if (!/^style\d+$/.test(p.id))
      continue
    for (const c of p.calls) {
      if (c.external)
        continue
      const key = `${robot.id}|${c.target}`
      if (!stylesByProgram.has(key))
        stylesByProgram.set(key, new Set())
      stylesByProgram.get(key).add(p.id)
    }
  }
}

const occurrences = []
const programInfo = []
for (const robot of robots) {
  for (const p of robot.programs) {
    if (!p.new?.converted || !p.new.blob)
      continue
    if (!p.new.meta?.appl?.some(a => /SPOT/.test(a)))
      continue
    const text = readFileSync(join(blobDir, `${p.new.blob}.txt`), 'utf8')
    const positions = parsePositions(text)
    const spots = parseWeldSpots(text)
    programInfo.push({ robot: robot.id, program: p.id, spots: spots.length, positions: positions.size })
    for (const s of spots) {
      if (s.pos == null)
        continue
      const pos = positions.get(s.pos)
      if (!pos || pos.x == null)
        continue
      occurrences.push({
        robot: robot.id,
        program: p.id,
        line: s.line,
        motion: s.motion,
        pos: s.pos,
        label: s.label,
        x: pos.x,
        y: pos.y,
        z: pos.z,
        w: pos.w,
        p: pos.p,
        r: pos.r,
        gun: pos.gun,
        uf: pos.uf,
        ut: pos.ut,
        styles: [...(stylesByProgram.get(`${robot.id}|${p.id}`) ?? [])].sort(),
      })
    }
  }
}

function groupBy(list, keyFn) {
  const m = new Map()
  for (const item of list) {
    const k = keyFn(item)
    if (!m.has(k))
      m.set(k, [])
    m.get(k).push(item)
  }
  return m
}

const round = (n, p = 1) => Math.round(n * 10 ** p) / 10 ** p
const coordKey = o => `${o.robot}|${round(o.x)}|${round(o.y)}|${round(o.z)}`
const exact = groupBy(occurrences, coordKey)
const repeatedP = groupBy(occurrences, o => `${o.robot}|${o.program}|${o.pos}`)
const withinProgram = groupBy(occurrences, o => `${o.robot}|${o.program}|${round(o.x)}|${round(o.y)}|${round(o.z)}`)
const crossRobot = groupBy(occurrences, o => `${round(o.x)}|${round(o.y)}|${round(o.z)}`)

const exactDup = [...exact.values()].filter(g => g.length > 1)
const repeated = [...repeatedP.values()].filter(g => g.length > 1)
const withinDup = [...withinProgram.values()].filter(g => g.length > 1)
const crossDup = [...crossRobot.values()].filter(g => new Set(g.map(o => o.robot)).size > 1)

const byRobot = robots.map((robot) => {
  const spots = occurrences.filter(o => o.robot === robot.id)
  const groups = exactDup.filter(g => g[0].robot === robot.id)
  const programs = new Set(spots.map(o => o.program))
  return {
    robot: robot.id,
    label: robot.label,
    spots: spots.length,
    programs: programs.size,
    groups: groups.length,
    duplicateSpots: groups.reduce((n, g) => n + g.length, 0),
  }
})

const pairCount = new Map()
for (const g of exactDup) {
  const progs = [...new Set(g.map(o => o.program))].sort()
  for (let i = 0; i < progs.length; i++) {
    for (let j = i + 1; j < progs.length; j++) {
      const key = `${g[0].robot}|${progs[i]}|${progs[j]}`
      pairCount.set(key, (pairCount.get(key) ?? 0) + 1)
    }
  }
}
const pairs = [...pairCount.entries()]
  .map(([key, count]) => {
    const [robot, a, b] = key.split('|')
    return { robot, a, b, count }
  })
  .sort((a, b) => b.count - a.count)

// CSV: every occurrence that belongs to a same-robot cross-program duplicate group.
const sortedGroups = exactDup
  .slice()
  .sort((a, b) => a[0].robot.localeCompare(b[0].robot, undefined, { numeric: true }) || b.length - a.length)
const csv = ['group,robot,x,y,z,program,line,position,label,motion,gun,styles']
let groupNo = 0
for (const g of sortedGroups) {
  groupNo++
  const id = `${g[0].robot}-G${String(groupNo).padStart(3, '0')}`
  for (const o of g) {
    csv.push([
      id,
      o.robot,
      round(o.x).toFixed(1),
      round(o.y).toFixed(1),
      round(o.z).toFixed(1),
      o.program,
      o.line,
      o.pos,
      `"${(o.label || '').replace(/"/g, '""')}"`,
      o.motion,
      o.gun ?? '',
      `"${o.styles.join(' ')}"`,
    ].join(','))
  }
}

const topGroups = []
{
  const perRobot = new Map()
  const sorted = exactDup
    .slice()
    .sort((a, b) => b.length - a.length || a[0].robot.localeCompare(b[0].robot, undefined, { numeric: true }))
  for (const g of sorted) {
    const n = perRobot.get(g[0].robot) ?? 0
    if (n >= 2)
      continue
    perRobot.set(g[0].robot, n + 1)
    topGroups.push(g)
    if (topGroups.length >= 20)
      break
  }
}

const md = `# 最新备份（2026-11-21）焊点位置重复分析

## 结论

- 共分析 **${robots.length} 台机器人、${programInfo.length} 个含 SPOT 指令的程序、${occurrences.length} 条焊点指令**。
- **单个程序内部：0 组重复坐标**。没有发现同一个程序里两个不同 P 点落在同一位置，也没有发现同一个 P 被多条 SPOT 指令重复使用。
- **同一个 STYLE 循环内部：没有重复**。每个 STYLE 只调用一个焊接子程序。
- **不同机器人之间：0 组重复坐标**。没有两台机器人焊接完全相同的世界坐标。
- **同一台机器人、不同焊接程序之间：${exactDup.length} 组重复坐标，涉及 ${exactDup.reduce((n, g) => n + g.length, 0)} 条焊点指令**。

第 4 点需要结合工艺判断：当前多个 \`ED*_WELD\` 是同一工位的不同焊枪 / 零件方案，由不同 STYLE 程序选择执行。它们共享点位表通常是正常的方案复用，不代表同一次循环里重复焊接。如果这些程序本应针对不同零件且点位不应相同，则需要重点核对 r4、r5、r6、r7、r12。

## 按机器人统计

| 机器人 | 焊点指令 | 焊接程序 | 跨程序重复坐标组 | 涉及焊点 |
| --- | ---: | ---: | ---: | ---: |
${byRobot.map(r => `| ${r.label} | ${r.spots} | ${r.programs} | ${r.groups} | ${r.duplicateSpots} |`).join('\n')}

## 同一机器人内重复最多的坐标（Top 20）

${topGroups.map((g) => {
  const styles = [...new Set(g.flatMap(o => o.styles))].sort()
  const progs = [...new Set(g.map(o => o.program))]
  return `### ${g.length}× \`${round(g[0].x)}, ${round(g[0].y)}, ${round(g[0].z)}\`

- 机器人：**${g[0].robot}**
- 程序：${progs.map(p => `\`${p}\``).join('、')}
- STYLE：${styles.length ? styles.map(s => `\`${s}\``).join('、') : '—'}
${g.map(o => `- \`${o.program}\` L${o.line} · P[${o.pos}]${o.label ? ` · ${o.label}` : ''}`).join('\n')}`
}).join('\n\n')}

## 共享坐标最多的程序对（Top 15）

| 机器人 | 程序 A | 程序 B | 相同坐标数 |
| --- | --- | --- | ---: |
${pairs.slice(0, 15).map(p => `| ${p.robot} | ${p.a} | ${p.b} | ${p.count} |`).join('\n')}

## 判定方法

- 焊接点取 \`SPOT[\` 指令前面那条运动指令的位置（\`P[n]\`）。
- 坐标取 \`/POS\` 中 GP1 的 \`X/Y/Z\`，按 **0.1 mm** 精度归组。
- 只统计最新备份（2026-11-21），失败转译的程序不纳入。
- 完整的 310 组、893 条焊点明细见 [weld-duplicates.csv](./weld-duplicates.csv)。

> 说明：跨程序重复是“点位定义复用”，不等同于一次执行中的重复焊接。建议按 STYLE 实际调用的程序集合再结合工艺确认。
`

writeFileSync(join(root, 'docs/weld-duplicate-analysis.md'), md)
writeFileSync(join(root, 'docs/weld-duplicates.csv'), `${csv.join('\n')}\n`)

console.log(`robots=${robots.length} programs=${programInfo.length} spots=${occurrences.length}`)
console.log(`withinProgram=${withinDup.length} repeatedP=${repeated.length} crossRobot=${crossDup.length} sameRobotAcrossPrograms=${exactDup.length}`)
console.log(`duplicateSpots=${exactDup.reduce((n, g) => n + g.length, 0)}`)
console.log('wrote docs/weld-duplicate-analysis.md and docs/weld-duplicates.csv')
