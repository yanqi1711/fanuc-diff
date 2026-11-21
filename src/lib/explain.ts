// Rule-based Chinese explanation for each TP instruction line
import type { TpLine } from './tp'
import { REGISTER_NOTES, SIGNAL_NOTES } from '../data/signals'
import { translateComment, translateMessage } from './translate'

/** "DO[20:OFF:工作完成]" -> "DO[20]「工作完成」" */
function sig(text: string) {
  const m = text.match(/^(\w+)\[([^\]:]+)(?::(?:ON |OFF|ON|\d+))?(?::([^\]]*))?\]$/)
  if (!m)
    return text
  const [, type, idx, name] = m
  const key = `${type}[${idx}]`
  const note = name?.replace(/�/g, '').trim() || REGISTER_NOTES[key]
  const fix = SIGNAL_NOTES[type]?.[idx]
  const real = fix?.warn ? `（实为：${fix.meaning}）` : ''
  return note ? `${key}「${note}」${real}` : key
}

function sigsIn(s: string) {
  return s.replace(/\b(DO|DI|GO|GI|RO|RI|R|PR|AR)\[(?:[^[\]]|\[[^\]]*\])*\]/g, t => sig(t))
}

function cond(s: string) {
  return sigsIn(s)
    .replace(/<>/g, ' ≠ ')
    .replace(/<=/g, ' ≤ ')
    .replace(/>=/g, ' ≥ ')
    .replace(/(?<![≠≤≥\s])>(?!=)/g, ' > ')
    .replace(/(?<![≠≤≥\s])<(?![=>])/g, ' < ')
    .replace(/(?<![≠≤≥])=/g, ' = ')
    .replace(/\bAND\b/g, '且')
    .replace(/\bOR\b/g, '或')
    .replace(/\s+/g, ' ')
    .trim()
}

const MOTION: Record<string, string> = { J: '关节运动', L: '直线运动', C: '圆弧运动', A: '圆弧运动' }

function termination(t: string) {
  if (t === 'FINE')
    return 'FINE 精确到位后再执行下一行'
  const m = t.match(/^CNT(\d+)$/)
  if (m)
    return Number(m[1]) === 0 ? 'CNT0 基本到位' : `CNT${m[1]} 平滑过渡（不停顿）`
  return t
}

function appInstr(s: string): string | undefined {
  const m = s.match(/^(SPOT|TIPDRESS|PRESS_MOTN)\[(.*)\]$/)
  if (!m)
    return undefined
  const kv = Object.fromEntries(m[2].split(',').map((p) => {
    const [k, v] = p.split('=')
    return [k.trim(), v?.trim()]
  }))
  const parts: string[] = []
  if (kv.SD)
    parts.push(`起始距离条件 SD=${kv.SD}`)
  if (kv.P)
    parts.push(`加压条件 P=${kv.P}`)
  if (kv.t)
    parts.push(`板厚 t=${kv.t}mm`)
  if (kv.S)
    parts.push(`焊接条件 S=${kv.S}`)
  if (kv.TD)
    parts.push(`修磨条件 TD=${kv.TD}`)
  if (kv.ED)
    parts.push(`结束距离条件 ED=${kv.ED}`)
  const title = { SPOT: '到点后执行点焊', TIPDRESS: '到点后执行电极修磨（加压夹住修磨刀）', PRESS_MOTN: '到点后焊枪加压闭合（不通电）' }[m[1]]
  return `${title}：${parts.join('，')}`
}

function motion(line: TpLine) {
  const [first, ...cont] = line.code.split('\n')
  const m = first.match(/^(P\[[^\]]*\]|PR\[(?:[^[\]]|\[[^\]]*\])*\])\s+([\d.]+)(%|mm\/sec|cm\/min|deg\/sec|sec)\s+(\S+)(.*)$/)
  if (!m)
    return `${MOTION[line.motion!]}：${first}`
  const [, target, speed, unit, term, extra] = m
  let tgt = target
  const pr = target.match(/^PR\[(.+?)(?::(.*))?\]$/)
  if (pr)
    tgt = `位置寄存器 PR[${pr[1]}]${pr[2] ? `（${pr[2]}${pr[2] === 'HOME' ? ' 原点' : ''}）` : ''}`
  const spd = unit === '%' ? `速度 ${speed}%` : `速度 ${speed}${unit}`
  const out = [`${MOTION[line.motion!]}到${pr ? '' : ' '}${tgt}，${spd}，${termination(term)}`]
  if (extra.trim())
    out.push(extra.trim())
  for (const c of cont)
    out.push(appInstr(c) ?? c)
  return out.join('；')
}

export function explainLine(line: TpLine, describeProgram?: (name: string) => string | undefined): string | undefined {
  if (line.motion)
    return (line.disabled ? '（已屏蔽）' : '') + motion(line)

  const c = line.code.trim()
  const pre = line.disabled ? '（已屏蔽，不执行）' : ''
  if (!c)
    return undefined

  let m: RegExpMatchArray | null

  if (c.startsWith('!'))
    return translateComment(c.slice(1))

  if ((m = c.match(/^LBL\[(\w+)(?::(.*))?\]$/)))
    return `标签 ${m[1]}${m[2] ? `（${m[2]}）` : ''}：跳转目标`

  if ((m = c.match(/^JMP LBL\[(.+)\]$/)))
    return `${pre}无条件跳转到标签 ${sigsIn(m[1])}`

  if ((m = c.match(/^(CALL|RUN) (\w+)(?:\((.*)\))?$/))) {
    const desc = describeProgram?.(m[2])
    const args = m[3] ? `，参数 (${m[3]})` : ''
    const verb = m[1] === 'RUN' ? '并行启动程序' : '调用子程序'
    return `${pre}${verb} ${m[2]}${args}${desc ? ` — ${desc}` : ''}`
  }

  if ((m = c.match(/^IF (.+),\s*JMP LBL\[(.+)\]$/)))
    return `${pre}如果 ${cond(m[1])}，跳转到标签 ${m[2]}`
  if ((m = c.match(/^IF (.+),\s*CALL (\w+)/)))
    return `${pre}如果 ${cond(m[1])}，调用 ${m[2]}`

  if ((m = c.match(/^SELECT (.+?)=(\S+),\s*JMP LBL\[(.+)\]$/)))
    return `多分支：根据 ${sigsIn(m[1])} 的值跳转；= ${m[2]} 时跳到标签 ${m[3]}`
  if ((m = c.match(/^=(\S+),\s*JMP LBL\[(.+)\]$/)))
    return `　= ${m[1]} 时跳到标签 ${m[2]}`
  if ((m = c.match(/^ELSE,\s*JMP LBL\[(.+)\]$/)))
    return `　其他值：跳到标签 ${m[1]}`

  if ((m = c.match(/^WAIT\s+([\d.]+)\(sec\)$/)))
    return `${pre}等待 ${Number(m[1])} 秒`
  if ((m = c.match(/^WAIT (.+?)(?:\s+TIMEOUT,LBL\[(.+)\])?$/))) {
    const edge = m[1].trim().endsWith('+') ? '（上升沿）' : m[1].trim().endsWith('-') ? '（下降沿）' : ''
    return `${pre}等待直到 ${cond(m[1].replace(/[+-]\s*$/, ''))}${edge}${m[2] ? `，超时跳到标签 ${m[2]}` : ''}`
  }

  if ((m = c.match(/^((?:DO|RO|GO|AO)\[[^\]]*\])=PULSE,?\s*([\d.]+)sec$/)))
    return `${pre}输出 ${sig(m[1])} 脉冲 ${Number(m[2])} 秒`
  if ((m = c.match(/^((?:DO|RO)\[[^\]]*\])=(ON|OFF)$/)))
    return `${pre}输出 ${sig(m[1])} 置为 ${m[2]}`
  if ((m = c.match(/^(GO\[[^\]]*\])=\(?(.+?)\)?$/)))
    return `${pre}组输出 ${sig(m[1])} = ${sigsIn(m[2])}`

  if ((m = c.match(/^MESSAGE\[(.*)\]$/)))
    return `在示教器上显示：「${translateMessage(m[1])}」`
  if ((m = c.match(/^UALM\[(\d+)\]$/)))
    return `触发用户报警 UALM[${m[1]}]，程序暂停，需人工复位`
  if (c === 'END')
    return '程序结束，返回调用者'
  if (c === 'ABORT')
    return '中止程序运行'
  if (c === 'PAUSE')
    return '暂停程序'

  if ((m = c.match(/^TIMER\[(\d+)\]=(RESET|START|STOP)$/)))
    return `计时器 TIMER[${m[1]}] ${{ RESET: '清零', START: '开始计时', STOP: '停止计时' }[m[2]]}（统计节拍）`
  if ((m = c.match(/^UFRAME_NUM=(\d+)$/)))
    return `选用用户坐标系 ${m[1]}${m[1] === '0' ? '（世界坐标系）' : ''}`
  if ((m = c.match(/^UTOOL_NUM=(\d+)$/)))
    return `选用工具坐标系 ${m[1]}（焊枪 TCP）`
  if ((m = c.match(/^PAYLOAD\[(\d+)(?::(.*))?\]$/)))
    return `切换负载设置为 ${m[1]}${m[2] ? `（${m[2]}）` : ''}`

  const app = appInstr(c)
  if (app)
    return pre + app

  if ((m = c.match(/^(R\[(?:[^[\]]|\[[^\]]*\])*\])=(.+)$/)))
    return `${pre}寄存器 ${sig(m[1])} ← ${sigsIn(m[2])}`
  if ((m = c.match(/^(PR\[[^\]]*\])=(.+)$/)))
    return `${pre}位置寄存器 ${sig(m[1])} ← ${sigsIn(m[2])}`

  return undefined
}
