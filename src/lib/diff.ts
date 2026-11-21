import { diffLines } from 'diff'

export interface DiffRow {
  type: 'same' | 'add' | 'del' | 'gap'
  a?: number
  b?: number
  text: string
}

export interface DiffOptions {
  ignoreWhitespace?: boolean
  hideMeta?: boolean
  context?: number
}

const META_RE = /^\s*(CREATE|MODIFIED|PROG_SIZE|MEMORY_SIZE|FILE_NAME|LINE_COUNT|VERSION)\s*=/

function normalizeLine(line: string, ignoreWhitespace: boolean) {
  return ignoreWhitespace ? line.replace(/\s+$/, '') : line
}

export function prepareText(text: string, opts: DiffOptions = {}) {
  const ignoreWs = opts.ignoreWhitespace ?? true
  let ls = text.replace(/\r\n/g, '\n').split('\n')
  if (ls.length && ls[ls.length - 1] === '')
    ls = ls.slice(0, -1)
  if (opts.hideMeta)
    ls = ls.map(l => META_RE.test(l) ? l.replace(/=.*/, '= …') : l)
  return ls.map(l => normalizeLine(l, ignoreWs))
}

/** Flatten line diff into rows with old/new line numbers. */
export function diffRows(oldText: string, newText: string, opts: DiffOptions = {}) {
  const a = prepareText(oldText, opts)
  const b = prepareText(newText, opts)
  const parts = diffLines(a.join('\n'), b.join('\n'))
  const all: DiffRow[] = []
  let la = 1
  let lb = 1
  for (const p of parts) {
    const raw = p.value.replace(/\n$/, '')
    const ls = raw === '' ? [] : raw.split('\n')
    for (const text of ls) {
      if (p.added)
        all.push({ type: 'add', b: lb++, text })
      else if (p.removed)
        all.push({ type: 'del', a: la++, text })
      else
        all.push({ type: 'same', a: la++, b: lb++, text })
    }
  }

  let add = 0
  let del = 0
  for (const r of all) {
    if (r.type === 'add')
      add++
    else if (r.type === 'del')
      del++
  }

  const context = opts.context ?? Infinity
  if (context === Infinity)
    return { rows: all, add, del }

  const keep = new Array(all.length).fill(false)
  all.forEach((r, i) => {
    if (r.type !== 'same') {
      for (let k = Math.max(0, i - context); k <= Math.min(all.length - 1, i + context); k++)
        keep[k] = true
    }
  })
  const rows: DiffRow[] = []
  let skipped = 0
  all.forEach((r, i) => {
    if (keep[i]) {
      if (skipped) {
        rows.push({ type: 'gap', text: `⋯ ${skipped} 行相同` })
        skipped = 0
      }
      rows.push(r)
    }
    else {
      skipped++
    }
  })
  if (skipped && rows.length)
    rows.push({ type: 'gap', text: `⋯ ${skipped} 行相同` })
  return { rows, add, del }
}

/** Line numbers touched on the old and new side. */
export function changedLineSets(oldText: string, newText: string, opts: DiffOptions = {}) {
  const { rows } = diffRows(oldText, newText, { ...opts, context: Infinity })
  const oldSet = new Set<number>()
  const newSet = new Set<number>()
  for (const r of rows) {
    if (r.type === 'del' && r.a)
      oldSet.add(r.a)
    if (r.type === 'add' && r.b)
      newSet.add(r.b)
  }
  return { oldSet, newSet }
}
