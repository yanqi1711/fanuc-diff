// Build the static data set for the FANUC backup diff site.
//
// Input
//   data/old/r1..r12    backup at the earlier date
//   data/new/r1..r12    backup at the later date
//   data/ls-cache/*.ls  ASCII programs converted from .tp by printtp
//
// Output
//   public/data/index.json          site overview + robot summaries
//   public/data/robot/<id>.json     one robot: files, programs, diffs, calls
//   public/data/changes.json        flat change list for the "变更" page
//   public/data/blob/<sha1>.txt     content-addressed decoded text / LS / strings
//
// Text is decoded from GB18030. printtp occasionally drops a trailing 0xFE
// byte in Chinese comments; the same repair table as fanuc-codeview is used.

import { createHash } from 'node:crypto'
import { existsSync, mkdirSync, readFileSync, readdirSync, rmSync, statSync, writeFileSync } from 'node:fs'
import { basename, extname, join, relative } from 'node:path'
import { fileURLToPath } from 'node:url'
import { diffLines } from 'diff'
import iconv from 'iconv-lite'

const root = fileURLToPath(new URL('..', import.meta.url))
const dataDir = join(root, 'data')
const cacheDir = join(dataDir, 'ls-cache')
const publicDir = join(root, 'public', 'data')
const blobDir = join(publicDir, 'blob')

const DATES = ['old', 'new']
const ROBOT_IDS = Array.from({ length: 12 }, (_, i) => `r${i + 1}`)
const TEXT_EXT = new Set(['.ls', '.xml', '.ini', '.txt', '.dat', '.stm'])
const IMAGE_EXT = new Set(['.gif', '.png', '.jpg', '.jpeg'])
const ARCHIVE_EXT = new Set(['.zip'])

// printtp drops 0xFE in some Chinese characters. Repair the common ones.
const BYTE_FIXES = [
  [[0xB7, 0xCE, 0xF1], [0xB7, 0xFE, 0xCE, 0xF1]], // 服务
  [[0xD7, 0xF3, 0xBC], [0xD7, 0xF3, 0xBC, 0xFE]], // 左件
  [[0xD3, 0xD2, 0xBC], [0xD3, 0xD2, 0xBC, 0xFE]], // 右件
]

function fixBytes(buf) {
  const out = []
  for (let i = 0; i < buf.length; i++) {
    const hit = BYTE_FIXES.find(([bad]) => bad.every((b, k) => buf[i + k] === b))
    if (hit) {
      out.push(...hit[1])
      i += hit[0].length - 1
    }
    else {
      out.push(buf[i])
    }
  }
  return Buffer.from(out)
}

function decode(buf) {
  return iconv.decode(fixBytes(buf), 'gb18030').replace(/\r\n/g, '\n')
}

function sha(text) {
  return createHash('sha1').update(text).digest('hex')
}

function hashFile(path) {
  return createHash('sha256').update(readFileSync(path)).digest('hex')
}

function lines(text) {
  return text.replace(/\r\n/g, '\n').split('\n')
}

function section(text, start, end, from = 0) {
  const s = text.indexOf(start, from)
  if (s < 0)
    return ''
  if (!end)
    return text.slice(s + start.length)
  const e = text.indexOf(end, s + start.length)
  return text.slice(s + start.length, e < 0 ? undefined : e)
}

function extractStrings(buf) {
  const found = buf.toString('latin1').match(/[\x20-\x7E]{4,}/g) ?? []
  return [...new Set(found.map(s => s.trim()).filter(Boolean))].join('\n')
}

function fileKind(path) {
  const ext = extname(path).toLowerCase()
  if (ext === '.tp')
    return 'program'
  if (TEXT_EXT.has(ext))
    return 'text'
  if (IMAGE_EXT.has(ext))
    return 'image'
  if (ARCHIVE_EXT.has(ext))
    return 'archive'
  return 'binary'
}

// ------------------------------------------------------------------ metadata text

function parseProgramMeta(lsText) {
  const head = lsText.match(/^\/PROG\s+(\S+)(\s+Macro)?/m)
  const attrs = {}
  for (const m of section(lsText, '/ATTR', '\n/').matchAll(/^\s*(\w+)\s*=\s*(.*?);?\s*$/gm))
    attrs[m[1]] = m[2].replace(/^"|"$/g, '').replace(/,$/, '').trim()
  const mn = section(lsText, '/MN', '/POS')
  const programLines = mn.split('\n').filter(l => /^\s*\d+:/.test(l)).length
  const posCount = [...section(lsText, '/POS', '/END').matchAll(/P\[\d+/g)].length
  const appl = section(lsText, '/APPL', '/MN')
    .split('\n').map(l => l.trim().replace(/\s*;\s*$/, '')).filter(Boolean)
  return {
    name: head?.[1] ?? 'UNKNOWN',
    macro: Boolean(head?.[2]),
    comment: attrs.COMMENT ?? '',
    create: attrs.CREATE ?? '',
    modified: attrs.MODIFIED ?? '',
    lineCount: programLines,
    positions: posCount,
    appl,
  }
}

function normalizeProgram(lsText) {
  const mn = section(lsText, '/MN', '/POS')
  const attrs = section(lsText, '/ATTR', '\n/')
  const pos = section(lsText, '/POS', '/END')
  const code = mn.split('\n')
    .filter(l => !l.trim().startsWith('!') && l.trim())
    .map(l => l.replace(/\s+$/, ''))
    .join('\n')
  const comments = mn.split('\n')
    .map(l => l.match(/^\s*\d+:\s*!(.*?);?\s*$/)?.[1]?.trim() ?? '')
    .filter(Boolean)
    .join('\n')
  const positions = pos.split('\n').map(l => l.replace(/\s+/g, ' ').trim()).filter(Boolean).join('\n')
  const meta = attrs.split('\n')
    .filter(l => l.trim() && !/^(CREATE|MODIFIED|PROG_SIZE|MEMORY_SIZE|FILE_NAME)\b/.test(l.trim()))
    .map(l => l.replace(/\s+/g, ' ').trim())
    .join('\n')
  return { code, comments, positions, meta }
}

function diffCounts(a, b) {
  if (a === b)
    return { add: 0, del: 0 }
  let add = 0
  let del = 0
  for (const p of diffLines(a, b)) {
    if (!p.added && !p.removed)
      continue
    const n = p.value.replace(/\n$/, '').split('\n').length
    if (p.added)
      add += n
    else
      del += n
  }
  return { add, del }
}

function programChange(oldText, newText) {
  if (oldText == null || newText == null)
    return { add: 0, del: 0, code: false, comment: false, position: false, meta: false }
  const a = normalizeProgram(oldText)
  const b = normalizeProgram(newText)
  const code = a.code !== b.code
  const comment = a.comments !== b.comments
  const position = a.positions !== b.positions
  const meta = a.meta !== b.meta
  const codeDiff = diffCounts(a.code, b.code)
  const fullDiff = diffCounts(oldText, newText)
  return {
    add: fullDiff.add,
    del: fullDiff.del,
    codeAdd: codeDiff.add,
    codeDel: codeDiff.del,
    code,
    comment,
    position,
    meta,
  }
}

// ------------------------------------------------------------------ blob store

const blobs = new Map()
let blobBytes = 0

function putBlob(text) {
  if (text == null)
    return undefined
  const id = sha(text)
  if (!blobs.has(id)) {
    blobs.set(id, text)
    blobBytes += Buffer.byteLength(text)
  }
  return id
}

// ------------------------------------------------------------------ scan backups

function walk(dir, base = dir) {
  const out = []
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    const full = join(dir, entry.name)
    if (entry.isDirectory())
      out.push(...walk(full, base))
    else if (entry.isFile())
      out.push({ path: relative(base, full).replace(/\\/g, '/'), full })
  }
  return out
}

function backupDate(robotDir) {
  const p = join(robotDir, 'backdate.dt')
  if (!existsSync(p))
    return null
  const raw = readFileSync(p, 'utf8')
  const m = raw.match(/^(\d{2})\/(\d{2})\/(\d{2})\s+(\d{2}:\d{2}:\d{2})/m)
  if (!m)
    return null
  // FANUC writes YY/MM/DD: 26/09/05 = 2026-09-05
  return { date: `20${m[1]}-${m[2]}-${m[3]}`, time: m[4], version: raw.match(/Version:\s*(.+)/)?.[1]?.trim() }
}

function readBackup(robotId, date) {
  const dir = join(dataDir, date, robotId)
  if (!existsSync(dir))
    return null
  const files = []
  let bytes = 0
  for (const { path, full } of walk(dir)) {
    const buf = readFileSync(full)
    const ext = extname(path).toLowerCase()
    const kind = fileKind(path)
    const hash = createHash('sha256').update(buf).digest('hex')
    bytes += buf.length
    const entry = {
      path,
      name: basename(path),
      ext,
      kind,
      size: buf.length,
      hash,
      blob: undefined,
      strings: undefined,
      converted: undefined,
      meta: undefined,
    }
    if (kind === 'program') {
      const lsPath = join(cacheDir, `${hash}.ls`)
      entry.converted = existsSync(lsPath)
      if (entry.converted) {
        const ls = decode(readFileSync(lsPath))
        entry.blob = putBlob(ls)
        entry.meta = parseProgramMeta(ls)
        entry.lsLength = ls.length
      }
      else {
        entry.strings = extractStrings(buf)
      }
    }
    else if (kind === 'text') {
      entry.blob = putBlob(decode(buf))
    }
    else if (kind === 'binary') {
      entry.strings = extractStrings(buf)
    }
    files.push(entry)
  }
  return { date, dir, ...backupDate(dir), files, bytes }
}

// ------------------------------------------------------------------ program-specific helpers

function sideOf(file) {
  if (!file)
    return null
  return {
    size: file.size,
    hash: file.hash,
    blob: file.blob,
    converted: file.converted,
    binary: file.kind === 'binary',
    meta: file.meta,
  }
}

function roleOf(programs) {
  const names = programs.map(p => p.id)
  const roles = []
  if (names.some(n => /stud/i.test(n)))
    roles.push('螺柱焊')
  if (names.some(n => /weld|spot/i.test(n)))
    roles.push('点焊')
  if (names.some(n => /grip|pick|drop|part|vacuum|blowoff|clamp/i.test(n)))
    roles.push('搬运')
  return roles.length ? roles : ['其他']
}

function groupOf(ops, roles) {
  if (roles.includes('螺柱焊'))
    return '螺柱焊'
  const min = Math.min(...ops, 999)
  if (min <= 120)
    return '前段'
  if (min <= 150)
    return '侧围'
  if (min <= 170)
    return '中段'
  if (min <= 200)
    return '后段'
  if (min <= 220)
    return '后段 / 尾段'
  return '尾段'
}

function opNumbers(names) {
  const set = new Set()
  for (const n of names)
    for (const m of n.matchAll(/op(\d{2,3})/gi))
      set.add(Number(m[1]))
  return [...set].sort((a, b) => a - b)
}

// ------------------------------------------------------------------ build

function buildRobot(robotId) {
  const old = readBackup(robotId, 'old')
  const neu = readBackup(robotId, 'new')
  if (!old || !neu)
    return null

  const oldMap = new Map(old.files.map(f => [f.path, f]))
  const newMap = new Map(neu.files.map(f => [f.path, f]))
  const paths = [...new Set([...oldMap.keys(), ...newMap.keys()])]
    .sort((a, b) => {
      const ka = fileKind(a)
      const kb = fileKind(b)
      const order = { program: 0, text: 1, binary: 2, image: 3, archive: 4 }
      if (ka !== kb)
        return order[ka] - order[kb]
      return a.localeCompare(b, undefined, { numeric: true })
    })

  const files = []

  for (const path of paths) {
    const o = oldMap.get(path)
    const n = newMap.get(path)
    const kind = (n ?? o).kind
    let status = 'same'
    let change = null

    if (!o)
      status = 'added'
    else if (!n)
      status = 'removed'
    else if (kind === 'program') {
      if (o.hash === n.hash)
        status = 'same'
      else if (o.converted && n.converted) {
        const lsO = decode(readFileSync(join(cacheDir, `${o.hash}.ls`)))
        const lsN = decode(readFileSync(join(cacheDir, `${n.hash}.ls`)))
        change = programChange(lsO, lsN)
        status = change.code
          ? 'code'
          : change.position
            ? 'position'
            : change.comment
              ? 'comment'
              : change.meta
                ? 'meta'
                : 'same'
      }
      else {
        status = 'failed'
      }
    }
    else if (kind === 'text') {
      status = o.hash === n.hash ? 'same' : 'changed'
    }
    else {
      status = o.hash === n.hash ? 'same' : 'changed'
    }

    // For binary files, store printable strings only when the file changed.
    for (const [side, f] of [['old', o], ['new', n]]) {
      if (f && f.kind === 'binary' && status !== 'same' && f.strings)
        f.blob = putBlob(f.strings)
      // Failed .tp programs: keep a readable extract so the UI can still show something.
      if (f && f.kind === 'program' && !f.converted && f.strings)
        f.blob = putBlob(f.strings)
    }

    files.push({
      path,
      name: basename(path),
      ext: extname(path).toLowerCase(),
      kind,
      status,
      old: sideOf(o),
      new: sideOf(n),
      change,
      oldSize: o?.size ?? null,
      newSize: n?.size ?? null,
    })
  }

  // Programs (one .tp = one program), including failures.
  const programPaths = paths.filter(p => (newMap.get(p) ?? oldMap.get(p)).kind === 'program')
  const programs = []
  const byName = new Map()
  for (const path of programPaths) {
    const o = oldMap.get(path)
    const n = newMap.get(path)
    const f = files.find(x => x.path === path)
    const id = basename(path, extname(path)).toLowerCase()
    const entry = {
      id,
      file: path,
      name: (n ?? o).meta?.name ?? basename(path, extname(path)),
      comment: (n ?? o).meta?.comment ?? '',
      status: f.status,
      change: f.change,
      old: sideOf(o),
      new: sideOf(n),
      calls: [],
      calledBy: [],
    }
    programs.push(entry)
    byName.set(entry.name.toUpperCase(), entry)
  }

  // Call graph within the robot's program set.
  for (const p of programs) {
    const texts = [p.old, p.new]
    const seen = new Set()
    for (const side of texts) {
      if (!side?.converted)
        continue
      const ls = decode(readFileSync(join(cacheDir, `${side.hash}.ls`)))
      for (const line of section(ls, '/MN', '/POS').split('\n')) {
        const m = line.match(/^\s*\d+:\s*(?:CALL|RUN)\s+(\w+)(?:\((.*?)\))?/i)
        if (!m)
          continue
        const key = `${m[1].toUpperCase()}|${m[2] ?? ''}`
        if (seen.has(key))
          continue
        seen.add(key)
        const target = byName.get(m[1].toUpperCase())
        p.calls.push({ name: m[1], target: target?.id ?? m[1], args: m[2], external: !target })
        target?.calledBy.push({ from: p.id, line: 0 })
      }
    }
  }

  const names = programs.map(p => p.id)
  const ops = opNumbers(names)
  const roles = roleOf(programs)
  const group = groupOf(ops, roles)
  const styles = programs.filter(p => /^style\d+/i.test(p.id)).map(p => p.id)

  const programStats = {
    programCount: programs.length,
    converted: programs.filter(p => p.new?.converted || p.old?.converted).length,
    failed: programs.filter(p => !p.new?.converted && !p.old?.converted).length,
    programChanged: programs.filter(p => !['same', 'added', 'removed'].includes(p.status)).length,
    logic: programs.filter(p => p.status === 'code').length,
    comment: programs.filter(p => p.status === 'comment').length,
    position: programs.filter(p => p.status === 'position').length,
    meta: programs.filter(p => p.status === 'meta').length,
    added: programs.filter(p => p.status === 'added').length,
    removed: programs.filter(p => p.status === 'removed').length,
  }
  const fileStats = {
    total: files.length,
    changed: files.filter(f => !['same'].includes(f.status)).length,
    textChanged: files.filter(f => ['text'].includes(f.kind) && f.status === 'changed').length,
    binaryChanged: files.filter(f => ['binary'].includes(f.kind) && f.status === 'changed').length,
    added: files.filter(f => f.status === 'added').length,
    removed: files.filter(f => f.status === 'removed').length,
  }
  const linesTotal = programs.reduce((n, p) => n + (p.new?.meta?.lineCount ?? p.old?.meta?.lineCount ?? 0), 0)

  const oldTime = old.date ?? old.time
  const newTime = neu.date ?? neu.time

  return {
    id: robotId,
    label: robotId.toUpperCase(),
    group,
    roles,
    ops,
    styles,
    old: {
      date: old.date,
      time: old.time,
      version: old.version,
      files: old.files.length,
      programs: old.files.filter(f => f.kind === 'program').length,
      bytes: old.bytes,
    },
    new: {
      date: neu.date,
      time: neu.time,
      version: neu.version,
      files: neu.files.length,
      programs: neu.files.filter(f => f.kind === 'program').length,
      bytes: neu.bytes,
    },
    stats: { ...programStats, ...fileStats, lines: linesTotal },
    files,
    programs,
    // summaries for the home page
    topChanges: programs
      .filter(p => ['code', 'position', 'comment'].includes(p.status))
      .sort((a, b) => ((b.change?.codeAdd ?? 0) + (b.change?.codeDel ?? 0)) - ((a.change?.codeAdd ?? 0) + (a.change?.codeDel ?? 0)))
      .slice(0, 8)
      .map(p => ({ id: p.id, name: p.name, status: p.status, change: p.change })),
  }
}

// ------------------------------------------------------------------ main

rmSync(publicDir, { recursive: true, force: true })
mkdirSync(blobDir, { recursive: true })

const robots = ROBOT_IDS.map(buildRobot).filter(Boolean)
if (!robots.length)
  throw new Error('No robot backups found under data/old and data/new')

for (const robot of robots) {
  mkdirSync(join(publicDir, 'robot'), { recursive: true })
  writeFileSync(join(publicDir, 'robot', `${robot.id}.json`), JSON.stringify(robot))
}

// Flat change list
const changes = []
for (const robot of robots) {
  for (const f of robot.files) {
    if (f.status === 'same')
      continue
    const program = robot.programs.find(p => p.file === f.path)
    changes.push({
      robot: robot.id,
      robotLabel: robot.label,
      path: f.path,
      name: f.name,
      ext: f.ext,
      kind: f.kind,
      status: f.status,
      change: f.change,
      programId: program?.id,
      oldSize: f.oldSize,
      newSize: f.newSize,
    })
  }
}
changes.sort((a, b) => {
  const rank = { code: 0, position: 1, comment: 2, meta: 3, failed: 4, changed: 5, removed: 6, added: 7 }
  return (rank[a.status] ?? 9) - (rank[b.status] ?? 9)
    || a.robot.localeCompare(b.robot, undefined, { numeric: true })
    || a.path.localeCompare(b.path)
})

// Aggregate hot programs across the fleet
const hotMap = new Map()
for (const robot of robots) {
  for (const p of robot.programs) {
    if (!['code', 'position', 'comment', 'meta'].includes(p.status))
      continue
    if (!hotMap.has(p.id))
      hotMap.set(p.id, { id: p.id, name: p.name, robots: [], byRobot: {}, statuses: {}, codeAdd: 0, codeDel: 0 })
    const h = hotMap.get(p.id)
    h.robots.push(robot.id)
    h.byRobot[robot.id] = p.status
    h.statuses[p.status] = (h.statuses[p.status] ?? 0) + 1
    h.codeAdd += p.change?.codeAdd ?? 0
    h.codeDel += p.change?.codeDel ?? 0
  }
}
const hotPrograms = [...hotMap.values()]
  .sort((a, b) => b.robots.length - a.robots.length || (b.codeAdd + b.codeDel) - (a.codeAdd + a.codeDel))
  .slice(0, 12)

const totals = {
  robots: robots.length,
  backups: robots.length * 2,
  files: robots.reduce((n, r) => n + r.new.files, 0),
  programs: robots.reduce((n, r) => n + r.new.programs, 0),
  uniquePrograms: new Set(robots.flatMap(r => r.programs.map(p => p.id))).size,
  changedFiles: changes.length,
  changedPrograms: robots.reduce((n, r) => n + r.stats.programChanged, 0),
  logicPrograms: robots.reduce((n, r) => n + r.stats.logic, 0),
  positionPrograms: robots.reduce((n, r) => n + r.stats.position, 0),
  converted: robots.reduce((n, r) => n + r.stats.converted, 0),
  failed: robots.reduce((n, r) => n + r.stats.failed, 0),
  added: changes.filter(c => c.status === 'added').length,
  removed: changes.filter(c => c.status === 'removed').length,
  codeLines: robots.reduce((n, r) => n + r.stats.lines, 0),
  oldBytes: robots.reduce((n, r) => n + r.old.bytes, 0),
  newBytes: robots.reduce((n, r) => n + r.new.bytes, 0),
}

const index = {
  generatedAt: new Date().toISOString(),
  old: {
    date: robots[0]?.old.date ?? '',
    label: robots[0]?.old.date ?? '',
  },
  new: {
    date: robots[0]?.new.date ?? '',
    label: robots[0]?.new.date ?? '',
  },
  totals,
  hotPrograms,
  robots: robots.map(r => ({
    id: r.id,
    label: r.label,
    group: r.group,
    roles: r.roles,
    ops: r.ops,
    styles: r.styles,
    old: r.old,
    new: r.new,
    stats: r.stats,
    topChanges: r.topChanges,
  })),
}

writeFileSync(join(publicDir, 'index.json'), JSON.stringify(index))
writeFileSync(join(publicDir, 'changes.json'), JSON.stringify({ changes, totals }))

// Write blob files
for (const [id, text] of blobs)
  writeFileSync(join(blobDir, `${id}.txt`), text, 'utf8')

console.log(`robots: ${robots.length}`)
console.log(`files: ${totals.files}  programs: ${totals.programs}  unique programs: ${totals.uniquePrograms}`)
console.log(`changed files: ${totals.changedFiles}  changed programs: ${totals.changedPrograms}  logic: ${totals.logicPrograms}`)
console.log(`converted: ${totals.converted}  failed: ${totals.failed}`)
console.log(`blobs: ${blobs.size} (${(blobBytes / 1024 / 1024).toFixed(1)} MB)`)
