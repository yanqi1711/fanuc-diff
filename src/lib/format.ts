import type { FileStatus } from '../types'

export function fmtSize(n: number | null | undefined) {
  if (n == null)
    return '—'
  if (n < 1024)
    return `${n} B`
  if (n < 1024 * 1024)
    return `${(n / 1024).toFixed(1)} KB`
  return `${(n / 1024 / 1024).toFixed(2)} MB`
}

export function shortDate(date: string) {
  if (!date)
    return '—'
  const [, m, d] = date.split('-')
  return `${Number(m)}/${Number(d)}`
}

export function dateLabel(date: string) {
  if (!date)
    return '—'
  const [y, m, d] = date.split('-')
  return `${y}.${m}.${d}`
}

export function statusLabel(s: FileStatus | string) {
  return ({
    code: '逻辑改动',
    position: '点位移位',
    comment: '注释改动',
    meta: '仅时间戳',
    changed: '已变更',
    added: '新增',
    removed: '删除',
    failed: '未转译',
    same: '相同',
  } as Record<string, string>)[s] ?? s
}

export function statusBadge(s: FileStatus | string) {
  if (s === 'added')
    return 'badge-add'
  if (s === 'removed' || s === 'failed')
    return 'badge-del'
  if (s === 'code' || s === 'position' || s === 'changed')
    return 'badge-code'
  return 'badge-mute'
}

export function statusText(s: FileStatus | string) {
  if (s === 'added')
    return 'st-add'
  if (s === 'removed')
    return 'st-del'
  if (s === 'failed')
    return 'st-del'
  if (s === 'code' || s === 'position' || s === 'changed' || s === 'comment' || s === 'meta')
    return 'st-chg'
  return 'op-50'
}

export function programHref(robot: string, date: 'old' | 'new', id: string) {
  return `/p/${robot}/${date}/${id}`
}

export function diffHref(robot: string, path: string) {
  return `/diff/${robot}?f=${encodeURIComponent(path)}`
}

export function statusRank(s: FileStatus | string) {
  return ({ code: 0, position: 1, comment: 2, meta: 3, failed: 4, changed: 5, removed: 6, added: 7, same: 8 } as Record<string, number>)[s] ?? 9
}

export function plural(n: number, unit: string) {
  return `${n} ${unit}`
}
