import type { ProgramNote } from '../data/notes'
import type { Token, TpProgram } from './tp'
import { translateComment } from './translate'
import { explainLine } from './explain'
import { tokenize } from './tp'

export interface RenderedLine {
  no: number
  motion?: string
  disabled: boolean
  /** tokens for each physical row (continuation rows split) */
  rows: Token[][]
  explain?: string
  note?: string
  /** label number when this line defines LBL[n] */
  labelDef?: string
  isComment: boolean
}

export function renderLines(
  tp: TpProgram,
  note: ProgramNote | undefined,
  describeProgram?: (name: string) => string | undefined,
): RenderedLine[] {
  return tp.lines.map((l) => {
    const code = l.code
    const isComment = code.trim().startsWith('!')
    return {
      no: l.no,
      motion: l.motion,
      disabled: l.disabled,
      rows: code.split('\n').map(tokenize),
      explain: explainLine(l, describeProgram),
      note: note?.lines?.[l.no],
      labelDef: code.match(/^LBL\[(\w+)/)?.[1],
      isComment,
    }
  })
}

/** Chinese text for an English code comment, if a translation rule matches. */
export function commentTranslation(raw: string) {
  return translateComment(raw)
}
