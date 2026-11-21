// Hand-written explanations for each program (logic, purpose, notable lines)

export type CategoryId = 'main' | 'weld' | 'handling' | 'stud' | 'maint' | 'plc' | 'wear' | 'thick' | 'misc'

export interface Category {
  id: CategoryId
  title: string
  desc: string
}

export const CATEGORIES: Category[] = [
  { id: 'main', title: '主程序（Style）', desc: 'PLC 通过 GI[6]「程序号」选择执行哪一个 STYLE 程序，每个 STYLE 代表一种作业。' },
  { id: 'weld', title: '焊接轨迹', desc: '实际的点焊路径，以及进入焊接前的等待位（Pounce）。' },
  { id: 'handling', title: '搬运 / 抓放件', desc: '夹具、真空吸盘与抓放件相关程序。' },
  { id: 'stud', title: '螺柱焊', desc: '螺柱焊枪与送钉、极性检测相关程序。' },
  { id: 'maint', title: '电极维护', desc: '电极修磨、换帽、视觉检测和服务位，用来保证焊点质量。' },
  { id: 'plc', title: 'PLC 联锁宏', desc: '与 PLC / 其他机器人的信号握手：工作位、干涉区、完成信号、I/O 复位。' },
  { id: 'wear', title: '电极磨损测量', desc: 'FANUC SpotTool+ 伺服焊枪的标准磨损测量程序（TW = 两步法，WR = 一步法，XW = 组合）。' },
  { id: 'thick', title: '板厚检测宏', desc: 'FANUC 标准的板厚检测参数宏。' },
  { id: 'misc', title: '其他', desc: '测试程序、回原点、服务程序等。' },
]

export interface ProgramNote {
  title: string
  category: CategoryId
  /** one-line summary used in lists and CALL explanations */
  brief: string
  /** paragraphs of explanation */
  detail?: string[]
  /** extra notes keyed by line number */
  lines?: Record<number, string>
  /** potential issues */
  warnings?: string[]
}

const ZONE_DETAIL = [
  '参数 AR[1] 为干涉区号（1~16），先存入 R[151]，再用一串 IF 分发到对应标签。',
  '干涉区由一对输出表示：DO[48+n]「占用」和 DO[64+n]「已释放」，两者状态始终相反。对方（另一台机器人或 PLC）通过 DI[48+n] 允许进入。',
  '参数超出 1~16 时显示提示信息并触发用户报警，然后跳回 LBL[1] 重新读取参数。由于 AR[1] 不会改变，复位报警后会再次报警。',
]

export const NOTES: Record<string, ProgramNote> = {
  // ---------------------------------------------------------------- main
  style21: {
    title: 'OP10/OP40 主程序',
    category: 'main',
    brief: '程序号 21：OP10/OP40 工位焊接的完整流程',
    detail: [
      'PLC 下发程序号 21 后进入本程序。流程为：握手 → 申请工作位 1 → 到等待位 → 释放工作位 1 → 执行焊接（工作位 2）→ 发送完成 → 回原点并复位 I/O。',
      'TIMER[10] 用来统计整个循环的节拍时间。',
    ],
    lines: {
      4: '与 PLC 握手：确认 PLC 发送的是 21',
      5: '把 21 回传给 PLC，表示已接收',
      7: '申请进入工作位 1（等待 PLC 允许）',
      8: '移动到焊接前的等待位（Pounce），同时占用干涉区 2、3',
      9: '工作位 1 完成',
      12: '真正的焊接轨迹，内部会申请工作位 2',
      15: '通知 PLC 工作完成，并等待 PLC 复位',
      16: '回 HOME 并复位所有握手信号',
      18: '清除回传的程序号',
    },
  },
  style11: {
    title: 'OP20 主程序',
    category: 'main',
    brief: '程序号 11：OP20 工位焊接的完整流程',
    detail: [
      '结构与 STYLE21 相同，只是等待位改为 PANCE1，焊接轨迹改为 X13_OP20_WELD_0411。',
    ],
    lines: {
      4: '与 PLC 握手：确认 PLC 发送的是 11',
      7: '申请进入工作位 1',
      8: '移动到等待位（只占用干涉区 3）',
      12: 'OP20 焊接轨迹（焊点 S11~S17）',
      14: '工作完成握手',
      15: '回原点并复位 I/O',
    },
  },
  style201: {
    title: '修磨主程序',
    category: 'main',
    brief: '程序号 201：电极修磨 + 视觉检测',
    detail: [
      '由 PLC 按修磨周期下发。当前使用带视觉检测的 TIPDRESS_GUN_VISION，原来的 TIPDRESS_GUN 已被 // 屏蔽。',
      '本程序结尾没有显式写 GO[6]=0（STYLE11/21 有），程序号由 MOVEHOME → IO_RESET 的最后一行清零。',
    ],
    lines: {
      5: '把程序号存入 R[6]',
      10: '旧版修磨（无视觉），已屏蔽',
      11: '修磨 + 视觉检查电极帽',
    },
  },
  style211: {
    title: '换帽主程序',
    category: 'main',
    brief: '程序号 211：更换电极帽后再修磨一次',
    detail: ['先执行换帽（TIPCHANGE_GUN），再执行一次普通修磨（TIPDRESS_GUN），让新电极帽成形。'],
    lines: { 10: '换电极帽', 11: '新帽修磨成形（无视觉版本）' },
  },
  style221: {
    title: '服务位主程序',
    category: 'main',
    brief: '程序号 221：移动到服务位方便人工维护',
    lines: { 6: '把 R[6]（=221）回传给 PLC', 10: '去服务位，等待人工确认后返回' },
  },

  // ---------------------------------------------------------------- weld
  x13_op10_op40_weld: {
    title: 'OP10/OP40 焊接轨迹',
    category: 'weld',
    brief: '左右件分支焊接，焊点 S1~S10',
    detail: [
      '开始时申请工作位 2，并占用与 R20 机器人共用的焊接干涉区 2 和修磨干涉区 3。',
      '分支：DI[122] 左件 / DI[123] 右件。只有左件时走 LBL[10]（S1~S4），焊完直接跳到 LBL[30] 回 HOME；只有右件时直接跳到 LBL[20]（S5~S10）。两个信号同时 ON 或同时 OFF 时，两条 IF 都不成立，程序先走 LBL[10]，再继续执行 LBL[20]，即左右两边都焊。',
      '左件路径在焊 S4 之前进入干涉区 1，焊完 S4 后离开。',
      '每个 SPOT 前的注释（如 LALWN22293）是焊点编号，对应工艺文件。',
    ],
    lines: {
      13: '只有左件 → 焊左边',
      14: '只有右件 → 跳过左边直接焊右边',
      50: '只有左件 → 焊完左边直接回原点（跳过右边）',
      56: '离开焊接干涉区 2（只有走右边路径时才会执行）',
      91: '注意：这个焊点 P=1、S=7，与其他焊点（P=5）不同，且 S=7 与第 81 行重复',
      126: '工作位 2 完成',
    },
    warnings: [
      '只有左件时从第 50 行直接跳到 LBL[30]，跳过了第 56 行的 EXIT_ZONE(2)，干涉区 2 会一直被占用，直到 STYLE 结尾 MOVEHOME → IO_RESET 统一复位。如果 R20 在此期间等待干涉区 2，会多等一段时间。',
      'DI[122]/DI[123] 都为 OFF（无件）时也会执行全部焊点，建议增加无件保护。',
      '第 91 行焊点使用 P=1，与其他焊点的加压条件不同，请确认是否为工艺要求。',
    ],
  },
  x13_op20_weld_0411: {
    title: 'OP20 焊接轨迹',
    category: 'weld',
    brief: 'OP20 焊点 S11~S17（0411 版本）',
    detail: [
      '申请工作位 2，占用修磨干涉区 3，依次焊接 7 个焊点后回 HOME，释放干涉区 3，完成工作位 2。',
      'S11、S12 使用 P=9、板厚 2.9mm，其余焊点使用 P=5、板厚 2.0mm。',
    ],
    lines: { 4: '申请工作位 2', 6: '占用修磨干涉区 3（与 R20 共用）', 71: '工作位 2 完成' },
  },
  pance1: {
    title: 'OP20 等待位',
    category: 'weld',
    brief: '占用干涉区 3 后移动到等待位 P[1]',
    lines: { 5: '占用修磨干涉区 3' },
  },
  pance2: {
    title: 'OP10/OP40 等待位',
    category: 'weld',
    brief: '占用干涉区 2、3 后移动到等待位 P[1]',
    lines: { 5: '占用焊接干涉区 2', 7: '占用修磨干涉区 3' },
  },

  // ---------------------------------------------------------------- maintenance
  tipdress_gun_vision: {
    title: '修磨 + 视觉检测',
    category: 'maint',
    brief: '修磨电极后拍照检测，NG 时最多重试一次',
    detail: [
      '① 输出"枪1修磨中"，回 HOME。',
      '② 移动到修磨器，启动刀片（脉冲 5 秒），等待刀片旋转的上升沿，执行 TIPDRESS 修磨。',
      '③ 更新电极磨损量 WR_UPD01(1,0)。',
      '④ 占用干涉区 3、4，打开相机防尘盖，移动到相机位，触发拍照，同时 PRESS_MOTN 加压闭合焊枪以便拍摄电极端面，等待 1.5 秒。',
      '⑤ 回 HOME，关闭防尘盖。视觉 OK → 结束；第一次 NG → 设 R[21]=1，回到 LBL[10] 重新修磨（R[20] 变为 2）；第二次仍 NG → 输出修磨报警 DO[153]，等待人工确认 DI[153]。',
      '⑥ 释放干涉区 3、4，调用 TD_DRESS_END 清除请求信号并累加修磨次数 R[53]。',
    ],
    lines: {
      7: 'R[20] = 尝试次数：第一次为 1，重试时为 2',
      13: '等待刀片转起来（上升沿）',
      22: '修磨后更新磨损量（旧电极）',
      40: '焊枪闭合，方便相机拍电极端面',
      50: '视觉 OK → 完成',
      51: '已经是第 2 次 → 报警',
      53: '视觉 NG → 重试（R[20]=3 的条件实际上不会出现）',
      56: '等待人工确认报警',
    },
    warnings: ['重试时会再次调用 ENTER_ZONE(3)/(4)，因为此时机器人仍占用这两个区，所以不会出问题，只是冗余。'],
  },
  tipdress_gun: {
    title: '电极修磨（无视觉）',
    category: 'maint',
    brief: '移动到修磨器执行 TIPDRESS 修磨',
    lines: { 10: '启动修磨器刀片（脉冲 5 秒）', 11: '等待刀片转起来', 13: '修磨：TD=1 号修磨条件', 20: '更新磨损量' },
  },
  tipchange_gun: {
    title: '更换电极帽',
    category: 'maint',
    brief: '关水 → 到换帽位 → 换帽器动作 → 开水 → 更新磨损量（新电极）',
    lines: {
      5: '关闭冷却水（防止换帽时漏水）',
      7: '等待水流确认已关闭（低流量 ON，充足 OFF）',
      10: '触发换帽器',
      11: '等待换帽器完成并回原位',
      13: '重新打开冷却水',
      14: '以"新电极"方式更新磨损量（参数2 = 1）',
      15: '等待水流恢复正常才允许继续',
    },
  },
  service_gun: {
    title: '服务位',
    category: 'maint',
    brief: '移动到服务位等待人工确认，方便检查焊枪',
    lines: { 9: '告知 PLC 已在服务位', 10: '等待人工确认（注释为"焊接启用"）' },
    warnings: ['DO[30] 到服务位后置 ON，但本程序里没有置 OFF，需要等 MOVEHOME → IO_RESET 复位。'],
  },
  td_dress_end: {
    title: '修磨结束处理',
    category: 'maint',
    brief: '清除修磨请求信号，修磨次数 R[53] 加 1',
  },
  td_change_end: {
    title: '换帽结束处理',
    category: 'maint',
    brief: '清除换帽请求信号，修磨次数 R[53] 清零',
  },

  // ---------------------------------------------------------------- PLC
  segment: {
    title: '申请工作位',
    category: 'plc',
    brief: '等待 PLC 允许后输出"已驶入工作位 n"',
    detail: ['参数 AR[1] = 工作位号 n（1~16）。等待 DI[32+n] 后置位 DO[32+n]。本工程只用到 1 和 2。', '参数非法时触发 UALM[3]。'],
  },
  finishseg: {
    title: '完成工作位',
    category: 'plc',
    brief: '输出"已驶出工作位 n"，并清除"已驶入"',
    detail: ['参数 AR[1] = 工作位号 n。DO[128+n] 置 ON，DO[32+n] 置 OFF。不等待 PLC 回应。', '参数非法时触发 UALM[4]。'],
  },
  enter_zone: {
    title: '进入干涉区',
    category: 'plc',
    brief: '申请并占用干涉区 n（等待对方允许）',
    detail: ZONE_DETAIL,
  },
  exit_zone: {
    title: '离开干涉区',
    category: 'plc',
    brief: '释放干涉区 n',
    detail: [...ZONE_DETAIL.slice(0, 2), '离开时不需要等待对方确认。参数非法时触发 UALM[6]。'],
  },
  end_task: {
    title: '工作完成握手',
    category: 'plc',
    brief: '输出"工作完成"，等待 PLC 复位确认',
  },
  io_reset: {
    title: 'I/O 复位',
    category: 'plc',
    brief: '复位所有工作位、干涉区、维护相关输出，程序号清零',
    lines: {
      53: '原注释乱码已修复：服务位置',
      86: '"已释放"信号全部置 ON = 所有干涉区都已释放',
      102: '同一条指令重复 5 次，疑似复制残留',
    },
  },
  movehome: {
    title: '回原点',
    category: 'misc',
    brief: '回 HOME 并复位所有握手信号',
  },
  testj: {
    title: '测试程序',
    category: 'misc',
    brief: '调试用：回原点后走两个点',
  },

  // ---------------------------------------------------------------- tip wear (standard)
  wr_upd01: { title: '更新磨损（枪1，一步法）', category: 'wear', brief: '修磨/换帽后调用：一步法更新枪1 电极磨损量' },
  wr_updat: { title: '一步法磨损更新', category: 'wear', brief: '无治具：闭合焊枪测零点，计算动/静电极磨损量' },
  wr_set01: { title: '设置磨损（枪1，一步法）', category: 'wear', brief: '基准电极下初始化一步法测量' },
  wr_setup: { title: '一步法磨损设置', category: 'wear', brief: '无治具磨损测量的初始化流程' },
  tw_upd01: { title: '更新磨损（枪1，两步法）', category: 'wear', brief: '两步法更新枪1 磨损量（本工程未使用）' },
  tw_updat: { title: '两步法磨损更新', category: 'wear', brief: '基于治具：零点校准 + 治具测量 + 压力测试' },
  tw_set01: { title: '设置磨损（枪1，两步法）', category: 'wear', brief: '两步法初始化（本工程未使用）' },
  tw_setup: { title: '两步法磨损设置', category: 'wear', brief: '基于治具磨损测量的初始化流程' },
  tw_mv2pt: { title: '移动到测量点', category: 'wear', brief: '按焊枪号和位置号移动到治具测量点（点位未示教，P[...]）' },
  tw_mvgun: { title: '仅移动焊枪轴', category: 'wear', brief: '把伺服焊枪轴移动到指定 PR' },
  xw_upd01: { title: '更新磨损（枪1，组合）', category: 'wear', brief: '组合测量入口（本工程未使用）' },
  xw_updat: { title: '组合磨损更新', category: 'wear', brief: '自动判断使用一步法还是两步法' },

  // ---------------------------------------------------------------- thickness
  tchk_rqd: { title: '请求板厚检测', category: 'thick', brief: '对下一个焊点执行板厚检测（ON RQST 模式）' },
  tchk_skp: { title: '跳过板厚检测', category: 'thick', brief: '对下一个焊点跳过板厚检测（ALL 模式）' },
  thk_sev: { title: '板厚报警等级', category: 'thick', brief: '设置下一个焊点的板厚报警等级' },
  thk_tol: { title: '板厚公差', category: 'thick', brief: '设置下一个焊点的板厚上下公差' },
}

/** programs that printtp could not decode */
export const FAILED_NOTES: Record<string, { title: string, reason: string }> = {
  'weld_on': { title: '焊接启用/禁用', reason: '用到点焊选项指令（$STROKE_ENBL 等），HandlingTool 虚拟机缺少这些指令的字典' },
  'spot_count_bg': { title: '焊点计数（后台）', reason: '用到点焊选项指令，HandlingTool 虚拟机缺少字典' },
  'rsrrsrrsr': { title: '未知（RSR 测试）', reason: '用到点焊应用头，HandlingTool 虚拟机无法解析' },
  'getdata': { title: 'PC 接口：读取数据', reason: 'PC Interface 选项的标准宏，虚拟机未安装该选项' },
  'senddata': { title: 'PC 接口：发送数据', reason: 'PC Interface 选项的标准宏' },
  'sendevnt': { title: 'PC 接口：发送事件', reason: 'PC Interface 选项的标准宏' },
  'sendsysv': { title: 'PC 接口：发送系统变量', reason: 'PC Interface 选项的标准宏' },
  'reqmenu': { title: 'PC 接口：请求菜单', reason: 'PC Interface 选项的标准宏' },
  '-bcked2-': { title: '编辑备份', reason: '示教器编辑时自动生成的临时备份（74 字节空壳），可忽略' },
  '-bcked8-': { title: '编辑备份', reason: '示教器编辑临时备份，可忽略' },
  '-bcked9-': { title: '编辑备份', reason: '示教器编辑临时备份，可忽略' },
  '-bckedt-': { title: '编辑备份', reason: '示教器编辑临时备份，可忽略' },
}

/** Notes for the programs that exist in this 12-robot fleet but not in the
 *  single-robot fanuc-codeview notes, derived from the naming convention. */
export function noteFor(id: string, comment = ''): ProgramNote {
  const isStyle = /^style\d+/i.test(id)
  const known = NOTES[id]
  // The hand-written STYLE notes in NOTES describe one specific robot and
  // would be misleading across the 12-robot fleet; derive them generically.
  if (known && !isStyle)
    return known

  const clean = comment.trim()
  const generic = (title: string, category: CategoryId, brief?: string): ProgramNote => ({
    title,
    category,
    brief: brief ?? clean ?? title,
  })

  let m: RegExpMatchArray | null
  if ((m = id.match(/^style(\d+)$/)))
    return generic(`程序号 ${m[1]} 主程序`, 'main', clean ? `${clean} · PLC 程序号 ${m[1]}` : `PLC 选择程序号 ${m[1]} 时执行的主流程`)
  if (/^ed\d+.*(weld|spot)/.test(id))
    return generic('焊接轨迹子程序', 'weld', clean || '按焊枪与工位执行一串点焊轨迹')
  if (/^g3g5.*(pick|drop)/.test(id))
    return generic(id.includes('pick') ? '抓件子程序' : '放件子程序', 'handling', clean || '抓取 / 放置工件')
  if (/stud/.test(id))
    return generic('螺柱焊程序', 'stud', clean || '螺柱焊枪、送钉与焊接参数')
  if (/^(check_|grip|release|vacuum|blowoff|setvalve|set_tool|chkpart|chknoprt|droppart|grippart|oktopick)/.test(id))
    return generic('搬运 / 夹具程序', 'handling', clean || '真空、夹爪与工件检测')
  if (/^p0s_|^pnspns$/.test(id))
    return generic('螺柱焊参数程序', 'stud', clean || '螺柱焊参数初始化')
  if (/^test/.test(id))
    return generic('测试程序', 'misc', clean || '现场测试用程序')
  return generic(clean || id.toUpperCase(), 'misc')
}

export function failedNote(id: string) {
  return FAILED_NOTES[id] ?? { title: id.toUpperCase(), reason: 'printtp 无法解析该 .tp（缺少对应的软件选项字典）' }
}
