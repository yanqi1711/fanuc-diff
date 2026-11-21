import type { ChangeEntry, ChangesData, IndexData, RobotData } from '../types'

const BASE = `${import.meta.env.BASE_URL}data/`

const jsonCache = new Map<string, Promise<unknown>>()
const blobCache = new Map<string, Promise<string>>()

function loadJson<T>(path: string): Promise<T> {
  let p = jsonCache.get(path) as Promise<T> | undefined
  if (!p) {
    p = fetch(`${BASE}${path}`).then((r) => {
      if (!r.ok)
        throw new Error(`无法加载 ${path}（${r.status}）`)
      return r.json() as Promise<T>
    })
    jsonCache.set(path, p)
  }
  return p
}

export function loadIndex() {
  return loadJson<IndexData>('index.json')
}

export function loadRobot(id: string) {
  return loadJson<RobotData>(`robot/${id}.json`)
}

export function loadChanges() {
  return loadJson<ChangesData>('changes.json')
}

export function loadBlob(id?: string | null): Promise<string> {
  if (!id)
    return Promise.resolve('')
  let p = blobCache.get(id)
  if (!p) {
    p = fetch(`${BASE}blob/${id}.txt`).then((r) => {
      if (!r.ok)
        throw new Error(`无法加载内容 ${id}`)
      return r.text()
    })
    blobCache.set(id, p)
  }
  return p
}

export type { ChangeEntry }
