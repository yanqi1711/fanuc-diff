export interface ProgramMeta {
  name: string
  macro: boolean
  comment: string
  create: string
  modified: string
  lineCount: number
  positions: number
  appl: string[]
}

export interface Side {
  size: number
  hash: string
  blob?: string
  converted?: boolean
  binary?: boolean
  meta?: ProgramMeta
}

export interface FileChange {
  add: number
  del: number
  codeAdd?: number
  codeDel?: number
  code: boolean
  comment: boolean
  position: boolean
  meta: boolean
}

export type FileStatus = 'same' | 'changed' | 'added' | 'removed' | 'code' | 'position' | 'comment' | 'meta' | 'failed'

export interface FileEntry {
  path: string
  name: string
  ext: string
  kind: 'program' | 'text' | 'binary' | 'image' | 'archive'
  status: FileStatus
  old: Side | null
  new: Side | null
  change: FileChange | null
  oldSize: number | null
  newSize: number | null
}

export interface CallRef {
  name: string
  target: string
  args?: string
  external: boolean
}

export interface ProgramEntry {
  id: string
  file: string
  name: string
  comment: string
  status: FileStatus
  change: FileChange | null
  old: Side | null
  new: Side | null
  calls: CallRef[]
  calledBy: { from: string, line: number }[]
}

export interface BackupSummary {
  date: string
  time: string
  version?: string
  files: number
  programs: number
  bytes: number
}

export interface RobotStats {
  total: number
  changed: number
  textChanged: number
  binaryChanged: number
  added: number
  removed: number
  converted: number
  failed: number
  logic: number
  comment: number
  position: number
  meta: number
  programCount: number
  programChanged: number
  lines: number
}

export interface TopChange {
  id: string
  name: string
  status: FileStatus
  change: FileChange | null
}

export interface RobotSummary {
  id: string
  label: string
  group: string
  roles: string[]
  ops: number[]
  styles: string[]
  old: BackupSummary
  new: BackupSummary
  stats: RobotStats
  topChanges: TopChange[]
}

export interface RobotData extends RobotSummary {
  files: FileEntry[]
  programs: ProgramEntry[]
}

export interface HotProgram {
  id: string
  name: string
  robots: string[]
  byRobot: Record<string, FileStatus>
  statuses: Record<string, number>
  codeAdd: number
  codeDel: number
}

export interface Totals {
  robots: number
  backups: number
  files: number
  programs: number
  uniquePrograms: number
  changedFiles: number
  changedPrograms: number
  logicPrograms: number
  positionPrograms: number
  converted: number
  failed: number
  added: number
  removed: number
  codeLines: number
  oldBytes: number
  newBytes: number
}

export interface IndexData {
  generatedAt: string
  old: { date: string, label: string }
  new: { date: string, label: string }
  totals: Totals
  hotPrograms: HotProgram[]
  robots: RobotSummary[]
}

export interface ChangeEntry {
  robot: string
  robotLabel: string
  path: string
  name: string
  ext: string
  kind: string
  status: FileStatus
  change: FileChange | null
  programId?: string
  oldSize: number | null
  newSize: number | null
}

export interface ChangesData {
  changes: ChangeEntry[]
  totals: Totals
}
