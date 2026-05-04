param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern('^[a-z0-9-]+$')]
    [string]$Name,

    [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
)

$ErrorActionPreference = 'Stop'

$template = Join-Path $Root 'profiles/custom-profile-template.md'
$targetDir = Join-Path $Root 'profiles/local'
$target = Join-Path $targetDir "$Name.md"

if (-not (Test-Path -LiteralPath $template -PathType Leaf)) {
    throw "Missing template: $template"
}

if (-not (Test-Path -LiteralPath $targetDir -PathType Container)) {
    New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
}

if (Test-Path -LiteralPath $target) {
    throw "Profile already exists: $target"
}

Copy-Item -LiteralPath $template -Destination $target
Write-Host "Created local profile: $target"
Write-Host "This file is ignored by git by default."
