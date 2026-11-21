// Parser & tokenizer for FANUC TP ASCII (.ls) programs

export interface TpLine {
  /** line number shown on the teach pendant */
  no: number
  /** instruction text without the line number / trailing ';' (continuation lines joined with "\n") */
  code: string
  /** motion type when the line is a motion instruction */
  motion?: 'J' | 'L' | 'C' | 'A'
  /** line commented out with `//` */
  disabled: boolean
}

export interface TpPosGroup {
  group: number
  uf?: number
  ut?: number
  config?: string
  values: Record<string, number>
  units: Record<string, string>
}

export interface TpPosition {
  id: number
  comment?: string
  groups: TpPosGroup[]
}

export interface TpProgram {
  name: string
  macro: boolean
  attrs: Record<string, string>
  appl: string[]
  lines: TpLine[]
  positions: TpPosition[]
}

function section(text: string, start: string, end: string) {
  const s = text.indexOf(start)
  if (s < 0)
    return ''
  const e = text.indexOf(end, s + start.length)
  return text.slice(s + start.length, e < 0 ? undefined : e)
}

export function parseProgram(text: string): TpProgram {
  const head = text.match(/^\/PROG\s+(\S+)(\s+Macro)?/m)
  const attrs: Record<string, string> = {}
  for (const m of section(text, '/ATTR', '/').matchAll(/^\s*(\w+)\s*=\s*(.*?);?\s*$/gm))
    attrs[m[1]] = m[2].replace(/^"|"$/g, '').replace(/,$/, '').trim()

  const appl = section(text, '/APPL', '/MN')
    .split('\n')
    .map(l => l.trim().replace(/\s*;\s*$/, ''))
    .filter(Boolean)

  const lines: TpLine[] = []
  for (const raw of section(text, '/MN', '/POS').split('\n')) {
    const m = raw.match(/^\s*(\d+):(.*)$/)
    if (m) {
      let rest = m[2]
      let motion: TpLine['motion']
      const mm = rest.match(/^([JLCA]) /)
      if (mm) {
        motion = mm[1] as TpLine['motion']
        rest = rest.slice(2)
      }
      let code = rest.trim().replace(/\s*;\s*$/, '')
      const disabled = code.startsWith('//')
      if (disabled) {
        code = code.slice(2)
        const dm = code.match(/^([JLCA]) /)
        if (dm) {
          motion = dm[1] as TpLine['motion']
          code = code.slice(2)
        }
      }
      lines.push({ no: Number(m[1]), code: code.trim(), motion, disabled })
      continue
    }
    const c = raw.match(/^\s+:\s*(.*)$/)
    if (c && lines.length)
      lines[lines.length - 1].code += `\n${c[1].trim().replace(/\s*;\s*$/, '')}`
  }

  return {
    name: head?.[1] ?? 'UNKNOWN',
    macro: Boolean(head?.[2]),
    attrs,
    appl,
    lines,
    positions: parsePositions(section(text, '/POS', '/END')),
  }
}

function parsePositions(text: string): TpPosition[] {
  const out: TpPosition[] = []
  for (const m of text.matchAll(/P\[(\d+)(?::"([^"]*)")?\]\{([\s\S]*?)\};/g)) {
    const groups: TpPosGroup[] = []
    for (const g of m[3].split(/(?=GP\d+:)/).filter(s => s.trim().startsWith('GP'))) {
      const grp: TpPosGroup = { group: Number(g.match(/GP(\d+)/)?.[1]), values: {}, units: {} }
      const uf = g.match(/UF\s*:\s*(\d+)/)
      const ut = g.match(/UT\s*:\s*(\d+)/)
      if (uf)
        grp.uf = Number(uf[1])
      if (ut)
        grp.ut = Number(ut[1])
      const cfg = g.match(/CONFIG\s*:\s*'([^']*)'/)
      if (cfg)
        grp.config = cfg[1]
      for (const v of g.matchAll(/\b([XYZWPR]|J\d+|E\d+)\s*=\s*(-?[\d.]+)\s*(mm|deg)?/g)) {
        grp.values[v[1]] = Number(v[2])
        if (v[3])
          grp.units[v[1]] = v[3]
      }
      groups.push(grp)
    }
    out.push({ id: Number(m[1]), comment: m[2] || undefined, groups })
  }
  return out
}

// ---------------------------------------------------------------- tokenizer

export type TokenKind =
  | 'kw' | 'op' | 'num' | 'str' | 'cmt' | 'text'
  | 'io' | 'reg' | 'pos' | 'lbl' | 'call' | 'app' | 'msg' | 'arg' | 'sys'

export interface Token {
  kind: TokenKind
  text: string
  /** program name for `call`, label number for `lbl`, position id for `pos`, signal key for `io`/`reg` */
  ref?: string
}

const KEYWORDS = new Set([
  'IF', 'JMP', 'CALL', 'RUN', 'WAIT', 'END', 'SELECT', 'ELSE', 'AND', 'OR', 'NOT',
  'ON', 'OFF', 'PULSE', 'RESET', 'START', 'STOP', 'FINE', 'CNT', 'ABORT', 'PAUSE',
  'UFRAME_NUM', 'UTOOL_NUM', 'OFFSET', 'TOOL_OFFSET', 'TIMEOUT', 'LBL', 'ACC',
  'SKIP', 'CONDITION', 'FOR', 'ENDFOR', 'TO', 'DOWNTO', 'MOD', 'DIV',
])
const IO_WORDS = new Set(['DO', 'DI', 'GO', 'GI', 'RO', 'RI', 'AO', 'AI', 'UO', 'UI', 'SO', 'SI', 'WO', 'WI', 'F', 'M'])
const REG_WORDS = new Set(['R', 'PR', 'SR', 'VR', 'AR', 'TIMER', 'UALM', 'PAYLOAD', 'UFRAME', 'UTOOL'])
const APP_WORDS = new Set(['SPOT', 'TIPDRESS', 'PRESS_MOTN', 'BACKUP', 'TIPCHANGE'])

function readBracket(s: string, i: number) {
  // s[i] === '['
  let depth = 0
  let j = i
  for (; j < s.length; j++) {
    if (s[j] === '[')
      depth++
    else if (s[j] === ']' && --depth === 0)
      return j + 1
  }
  return s.length
}

/** "DO[20:OFF:工作完成]" -> "DO[20]" */
export function signalKey(word: string, inner: string) {
  const idx = inner.split(':')[0].trim()
  return `${word}[${idx}]`
}

export function tokenize(code: string): Token[] {
  const out: Token[] = []
  const t = code.trimStart()
  if (t.startsWith('!'))
    return [{ kind: 'cmt', text: code }]

  let i = 0
  let lastWord = ''
  while (i < code.length) {
    const ch = code[i]
    if (/[A-Za-z_$]/.test(ch)) {
      let j = i + 1
      while (j < code.length && /[\w$.]/.test(code[j]))
        j++
      const word = code.slice(i, j)
      if (code[j] === '[') {
        const end = readBracket(code, j)
        const full = code.slice(i, end)
        const inner = code.slice(j + 1, end - 1)
        const up = word.toUpperCase()
        if (up === 'P')
          out.push({ kind: 'pos', text: full, ref: inner.split(':')[0] })
        else if (up === 'LBL')
          out.push({ kind: 'lbl', text: full, ref: inner.split(':')[0] })
        else if (up === 'MESSAGE')
          out.push({ kind: 'msg', text: full })
        else if (IO_WORDS.has(up))
          out.push({ kind: 'io', text: full, ref: signalKey(up, inner) })
        else if (up === 'AR')
          out.push({ kind: 'arg', text: full })
        else if (REG_WORDS.has(up))
          out.push({ kind: 'reg', text: full, ref: signalKey(up, inner) })
        else if (APP_WORDS.has(up))
          out.push({ kind: 'app', text: full })
        else
          out.push({ kind: 'reg', text: full })
        i = end
        lastWord = up
        continue
      }
      const up = word.toUpperCase()
      if (lastWord === 'CALL' || lastWord === 'RUN')
        out.push({ kind: 'call', text: word, ref: up })
      else if (word.startsWith('$'))
        out.push({ kind: 'sys', text: word })
      else if (KEYWORDS.has(up) || /^CNT\d+$/.test(up))
        out.push({ kind: 'kw', text: word })
      else
        out.push({ kind: 'text', text: word })
      lastWord = up
      i = j
      continue
    }
    if (/[\d.]/.test(ch) && /[\d.]/.test(code.slice(i, i + 2))) {
      let j = i
      while (j < code.length && /[\d.]/.test(code[j]))
        j++
      // attach units like mm/sec, %, sec
      const unit = code.slice(j).match(/^(mm\/sec|%|\(sec\)|sec|deg\/sec|cm\/min)/)
      if (unit)
        j += unit[0].length
      out.push({ kind: 'num', text: code.slice(i, j) })
      i = j
      continue
    }
    if (ch === '\'') {
      const j = code.indexOf('\'', i + 1)
      const end = j < 0 ? code.length : j + 1
      out.push({ kind: 'str', text: code.slice(i, end) })
      i = end
      continue
    }
    if (/\s/.test(ch)) {
      let j = i
      while (j < code.length && /\s/.test(code[j]))
        j++
      out.push({ kind: 'text', text: code.slice(i, j) })
      i = j
      continue
    }
    out.push({ kind: 'op', text: ch })
    i++
  }
  return out
}
