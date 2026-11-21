// Meaning of registers and I/O signals (inferred from how the programs use them)

/** registers that have no comment in the backup */
export const REGISTER_NOTES: Record<string, string> = {
  'R[6]': '当前程序号（GI[6] 缓存）',
  'R[10]': '磨损测量工作寄存器',
  'R[20]': '视觉检测尝试次数',
  'R[21]': '视觉检测重试标志',
  'R[51]': '修磨/换帽请求标志',
  'R[53]': '修磨次数计数（换帽后清零）',
  'R[148]': 'FINISHSEG 参数：完成的工作位号',
  'R[149]': 'SEGMENT 参数：工作位号',
  'R[151]': 'ENTER/EXIT_ZONE 参数：干涉区号',
}

export interface SignalNote {
  /** corrected / clarified meaning */
  meaning: string
  /** shown as a warning when the comment in the backup is misleading */
  warn?: string
}

function range(from: number, to: number, fn: (i: number) => SignalNote) {
  const out: Record<string, SignalNote> = {}
  for (let i = from; i <= to; i++)
    out[i.toString()] = fn(i)
  return out
}

const DO: Record<string, SignalNote> = {
  ...range(33, 48, i => ({ meaning: `机器人已驶入工作位 ${i - 32}（告知 PLC）` })),
  ...range(129, 144, i => ({ meaning: `机器人已驶出 / 完成工作位 ${i - 128}` })),
  ...range(49, 64, i => ({ meaning: `机器人占用干涉区 ${i - 48}（ON = 在区内）` })),
  ...range(65, 80, i => ({
    meaning: `干涉区 ${i - 64} 已释放（ON = 机器人不在区内）`,
    warn: `注释写的是"进入干涉区${i - 48}"，但程序里它是干涉区 ${i - 64} 的"已释放"信号，与 DO[${i - 16}] 状态相反`,
  })),
  6: { meaning: '机器人报警输出' },
  20: { meaning: '工作完成（END_TASK 握手）' },
  21: { meaning: '请求修磨' },
  22: { meaning: '请求换帽' },
  28: { meaning: '到达换帽位置，触发换帽器' },
  29: { meaning: '在修模（修磨）位置' },
  30: { meaning: '在服务位置（维修位）' },
  150: { meaning: '触发视觉拍照（电极帽检测）' },
  152: { meaning: '打开相机防尘盖' },
  153: { meaning: '修磨报警（视觉两次 NG）' },
  200: { meaning: '枪1 请求修磨' },
  201: { meaning: '枪1 修磨中' },
  203: { meaning: '枪1 请求换帽' },
  204: { meaning: '枪1 换帽中' },
  211: { meaning: '预留（在服务位相关）' },
  257: { meaning: '修磨器刀片旋转启动' },
  258: { meaning: '无注释；IO_RESET 中连续 5 次置 ON', warn: 'IO_RESET 第 102~106 行重复写了 5 次 DO[258]=ON，疑似复制残留' },
  274: { meaning: '冷却水阀（ON = 关水以便换帽）' },
}

const DI: Record<string, SignalNote> = {
  ...range(33, 48, i => ({ meaning: `PLC 允许进入工作位 ${i - 32}` })),
  ...range(49, 64, i => ({ meaning: `PLC 允许进入干涉区 ${i - 48}（对方机器人已让出）` })),
  20: { meaning: 'PLC 确认工作完成（复位握手）' },
  28: { meaning: '换帽器动作完成并回原位' },
  30: { meaning: '服务位确认', warn: '注释写"焊接启用"，但在 SERVICE_GUN 中用作服务位确认信号' },
  122: { meaning: '左件在位' },
  123: { meaning: '右件在位' },
  150: { meaning: '视觉检测 OK' },
  151: { meaning: '视觉检测 NG' },
  152: { meaning: '防尘盖已打开' },
  153: { meaning: '修磨报警已确认（复位）' },
  258: { meaning: '修磨刀片旋转中' },
  273: { meaning: '冷却水流量充足（允许焊接）' },
  274: { meaning: '冷却水流量过低（不适合焊接）' },
}

const GO: Record<string, SignalNote> = {
  1: { meaning: '故障时清零：工作位号（SEGMENT）' },
  2: { meaning: '故障时清零：完成工作位号（FINISHSEG）' },
  3: { meaning: '故障时清零：干涉区请求号' },
  4: { meaning: '故障时清零：干涉区释放号' },
  6: { meaning: '回传当前程序号给 PLC（握手）' },
}

const GI: Record<string, SignalNote> = {
  6: { meaning: 'PLC 下发的程序号（车型 / 作业选择）' },
}

export const SIGNAL_NOTES: Record<string, Record<string, SignalNote>> = { DO, DI, GO, GI }
