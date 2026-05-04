param(
    [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
)

$ErrorActionPreference = 'Stop'

function Copy-IfMissing([string]$SourceRelative, [string]$TargetRelative) {
    $source = Join-Path $Root $SourceRelative
    $target = Join-Path $Root $TargetRelative
    $targetDir = Split-Path -Parent $target

    if (-not (Test-Path -LiteralPath $source -PathType Leaf)) {
        throw "Missing source template: $SourceRelative"
    }

    if (-not (Test-Path -LiteralPath $targetDir -PathType Container)) {
        New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
    }

    if (Test-Path -LiteralPath $target) {
        Write-Host "Already exists: $TargetRelative"
        return
    }

    Copy-Item -LiteralPath $source -Destination $target
    Write-Host "Created: $TargetRelative"
}

Copy-IfMissing 'CUSTOMIZE.md' 'CUSTOMIZE.local.md'
Copy-IfMissing 'memory/user-context-template.md' 'memory/user-context.md'
Copy-IfMissing 'memory/session-learnings-template.md' 'memory/session-learnings.md'
Copy-IfMissing 'memory/improvement-backlog-template.md' 'memory/improvement-backlog.md'

Write-Host ''
Write-Host 'Local memory bootstrap complete.'
Write-Host 'These files are private by default and should not be committed.'
