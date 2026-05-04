param(
    [Parameter(Mandatory = $true)]
    [string]$Title,

    [Parameter(Mandatory = $true)]
    [string]$Summary,

    [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
)

$ErrorActionPreference = 'Stop'

$memoryDir = Join-Path $Root 'memory'
$target = Join-Path $memoryDir 'session-learnings.md'

if (-not (Test-Path -LiteralPath $memoryDir -PathType Container)) {
    New-Item -ItemType Directory -Force -Path $memoryDir | Out-Null
}

if (-not (Test-Path -LiteralPath $target -PathType Leaf)) {
    Copy-Item -LiteralPath (Join-Path $Root 'memory/session-learnings-template.md') -Destination $target
}

$date = Get-Date -Format 'yyyy-MM-dd'
$entry = @"

### $date - $Title

$Summary

"@

Add-Content -LiteralPath $target -Encoding UTF8 -Value $entry
Write-Host "Appended learning to: $target"
