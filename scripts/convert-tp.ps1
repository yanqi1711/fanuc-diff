# Convert every unique FANUC .tp binary program in the July and November backups
# using Roboguide's WinOLPC printtp.exe. Results are cached by SHA-256 of the .tp
# file, so identical programs (the same file on many robots) are only converted once.
#
# Usage:
#   pwsh scripts/convert-tp.ps1                 # all unique programs
#   pwsh scripts/convert-tp.ps1 -Limit 20       # first 20 (for a quick test)
#   pwsh scripts/convert-tp.ps1 -Force          # redo cached programs
param(
  [string]$DataDir = "$PSScriptRoot\..\data",
  [string]$CacheDir = "$PSScriptRoot\..\data\ls-cache",
  [string]$Robot = "$env:USERPROFILE\Documents\My Workcells\HandlingPRO4\Robot_1",
  [string]$Version = "V940-1",
  [int]$TimeoutSec = 45,
  [int]$Retries = 2,
  [int]$Limit = 0,
  [switch]$Force
)

$ErrorActionPreference = "Stop"
$printtp = "C:\Program Files (x86)\FANUC\WinOLPC\bin\printtp.exe"
if (-not (Test-Path -LiteralPath $printtp)) { throw "printtp.exe not found: $printtp" }
if (-not (Test-Path -LiteralPath $Robot)) { throw "Roboguide robot not found: $Robot" }

$work = Join-Path $env:TEMP "fanuc-diff-printtp"
New-Item -ItemType Directory -Force -Path $work, $CacheDir | Out-Null

# robot.ini: Version uses the WinOLPC folder-name format (V940-1, not V9.40-1)
$robotRel = $Robot -replace '^([A-Za-z]):', '$1'
[IO.File]::WriteAllLines("$work\robot.ini", @(
  '[WinOLPC_Util]',
  "Robot=$robotRel",
  "Version=$Version",
  "Support=$Robot\support",
  "Output=$Robot\output"
))

function Get-Sha256([string]$Path) {
  (Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash.ToLowerInvariant()
}

# Collect one representative per unique content hash. Prefer the "new" copy for
# names/metadata, but the binary is identical either way.
$seen = @{}
$jobs = New-Object System.Collections.Generic.List[object]
foreach ($date in @('11.21', '7')) {
  $root = Join-Path $DataDir $date
  if (-not (Test-Path -LiteralPath $root)) { continue }
  Get-ChildItem -LiteralPath $root -Recurse -File -Filter *.tp | ForEach-Object {
    $hash = Get-Sha256 $_.FullName
    if ($seen.ContainsKey($hash)) { return }
    $seen[$hash] = $true
    $jobs.Add([pscustomobject]@{
      Hash = $hash
      Path = $_.FullName
      Name = $_.BaseName
      Size = $_.Length
      Source = "$date/$((Split-Path $_.DirectoryName -Leaf))/$($_.Name)"
    })
  }
}

if ($Limit -gt 0) { $jobs = $jobs.GetRange(0, [Math]::Min($Limit, $jobs.Count)) }

Write-Host "unique .tp files: $($jobs.Count)"
$ok = 0
$skip = 0
$failed = New-Object System.Collections.Generic.List[object]
$started = Get-Date

foreach ($job in $jobs) {
  $out = Join-Path $CacheDir "$($job.Hash).ls"
  if ((Test-Path -LiteralPath $out) -and -not $Force) {
    $skip++
    continue
  }

  $safe = ($job.Name -replace '[^A-Za-z0-9_]', '_').Trim('_')
  if (-not $safe) { $safe = 'prog' }
  $tmpIn = Join-Path $work "$safe.tp"
  $tmpOut = Join-Path $work "$safe.ls"
  Copy-Item -LiteralPath $job.Path -Destination $tmpIn -Force
  if (Test-Path -LiteralPath $tmpOut) { Remove-Item -LiteralPath $tmpOut -Force }

  $done = $false
  $lastError = ''
  for ($attempt = 1; $attempt -le $Retries -and -not $done; $attempt++) {
    $p = Start-Process -FilePath $printtp -ArgumentList @("$safe.tp", "$safe.ls") `
      -WorkingDirectory $work -NoNewWindow -PassThru `
      -RedirectStandardOutput "$work\stdout.txt" -RedirectStandardError "$work\stderr.txt"
    if (-not $p.WaitForExit($TimeoutSec * 1000)) {
      try { $p.Kill() } catch { }
      $lastError = "timeout (${TimeoutSec}s, attempt $attempt)"
      Start-Sleep -Milliseconds 250
      continue
    }
    if (Test-Path -LiteralPath $tmpOut) {
      $len = (Get-Item -LiteralPath $tmpOut).Length
      if ($len -gt 0) {
        Move-Item -LiteralPath $tmpOut -Destination $out -Force
        $done = $true
        break
      }
    }
    $stdout = (Get-Content -LiteralPath "$work\stdout.txt" -Raw -ErrorAction SilentlyContinue)
    $stderr = (Get-Content -LiteralPath "$work\stderr.txt" -Raw -ErrorAction SilentlyContinue)
    $lastError = (($stdout, $stderr) -join ' ').Trim()
    if (-not $lastError) { $lastError = "exit $($p.ExitCode), no .ls" }
  }

  if ($done) {
    $ok++
    Write-Host ("[{0}/{1}] OK   {2}  {3}" -f ($ok + $skip), $jobs.Count, $job.Name, $job.Hash.Substring(0, 8))
  }
  else {
    $failed.Add([pscustomobject]@{ hash = $job.Hash; name = $job.Name; source = $job.Source; size = $job.Size; error = $lastError })
    Write-Host ("[{0}/{1}] FAIL {2}  {3}" -f ($ok + $skip + $failed.Count), $jobs.Count, $job.Name, $lastError) -ForegroundColor Yellow
  }
  Remove-Item -LiteralPath $tmpIn -Force -ErrorAction SilentlyContinue
}

$elapsed = (Get-Date) - $started
$report = [pscustomobject]@{
  generatedAt = (Get-Date).ToString('o')
  robot = $Robot
  version = $Version
  unique = $jobs.Count
  converted = $ok
  cached = $skip
  failed = $failed
  elapsedSeconds = [Math]::Round($elapsed.TotalSeconds, 1)
}
$report | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath (Join-Path $CacheDir '_report.json') -Encoding UTF8
Write-Host "converted=$ok cached=$skip failed=$($failed.Count) in $([Math]::Round($elapsed.TotalSeconds,1))s"
if ($failed.Count) {
  Write-Host "failed programs:"
  $failed | ForEach-Object { Write-Host ("  {0} ({1} B): {2}" -f $_.name, $_.size, $_.error) }
}
