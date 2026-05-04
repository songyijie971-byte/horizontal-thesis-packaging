param(
    [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
)

$ErrorActionPreference = 'Stop'
$failures = New-Object System.Collections.Generic.List[string]
$warnings = New-Object System.Collections.Generic.List[string]

function Add-Failure([string]$Message) {
    $failures.Add($Message) | Out-Null
}

function Add-Warning([string]$Message) {
    $warnings.Add($Message) | Out-Null
}

function Read-Utf8([string]$Path) {
    try {
        return Get-Content -LiteralPath $Path -Encoding UTF8 -Raw
    } catch {
        Add-Failure "Cannot read as UTF-8: $Path"
        return ''
    }
}

function Test-RequiredFile([string]$RelativePath) {
    $full = Join-Path $Root $RelativePath
    if (-not (Test-Path -LiteralPath $full -PathType Leaf)) {
        Add-Failure "Missing required file: $RelativePath"
        return $false
    }
    return $true
}

Write-Host "Validating skill at: $Root"

$skillPath = Join-Path $Root 'SKILL.md'
if (-not (Test-RequiredFile 'SKILL.md')) {
    throw 'SKILL.md is required.'
}

$skillText = Read-Utf8 $skillPath
$skillLines = ($skillText -split "`r?`n").Count

if ($skillLines -gt 500) {
    Add-Failure "SKILL.md has $skillLines lines; keep it under 500 lines."
}

if ($skillText -notmatch '(?s)^---\s*\r?\n(.*?)\r?\n---') {
    Add-Failure 'SKILL.md must start with YAML frontmatter.'
} else {
    $frontmatter = $Matches[1]
    $nameMatch = [regex]::Match($frontmatter, '(?m)^name:\s*(.+?)\s*$')
    $descMatch = [regex]::Match($frontmatter, '(?m)^description:\s*(.+?)\s*$')

    if (-not $nameMatch.Success) {
        Add-Failure 'Frontmatter is missing name.'
    } else {
        $name = $nameMatch.Groups[1].Value.Trim()
        if ($name -ne 'horizontal-thesis-packaging') {
            Add-Failure "Unexpected skill name: $name"
        }
        if ($name -notmatch '^[a-z0-9-]{1,64}$') {
            Add-Failure "Skill name must be lowercase letters/numbers/hyphens and <=64 chars: $name"
        }
    }

    if (-not $descMatch.Success) {
        Add-Failure 'Frontmatter is missing description.'
    } else {
        $description = $descMatch.Groups[1].Value.Trim()
        if ($description.Length -eq 0) {
            Add-Failure 'Description must not be empty.'
        }
        if ($description.Length -gt 1024) {
            Add-Failure "Description has $($description.Length) chars; max is 1024."
        }
        # Keep this script ASCII-only so Windows PowerShell can parse it reliably
        # even when the file is checked out without a UTF-8 BOM.
        $requiredTerms = @(
            'defense PPT',
            'engineering system',
            'AI application',
            'robotics project'
        )
        foreach ($term in $requiredTerms) {
            if ($description -notlike "*$term*") {
                Add-Warning "Description may be missing trigger term: $term"
            }
        }
    }
}

$requiredFiles = @(
    'CUSTOMIZE.md',
    'README.md',
    '.gitignore',
    'profiles/README.md',
    'profiles/profile-map.md',
    'profiles/local/README.md',
    'docs/usage-modes.md',
    'docs/open-source-customization.md',
    'docs/one-file-customization.md',
    'checklists/master-packaging-checklist.md',
    'checklists/pre-defense-checklist.md'
)

foreach ($file in $requiredFiles) {
    Test-RequiredFile $file | Out-Null
}

$allFiles = Get-ChildItem -LiteralPath $Root -Recurse -File
foreach ($file in $allFiles) {
    $relative = Resolve-Path -LiteralPath $file.FullName -Relative
    $relative = $relative -replace '^\.[\\/]', ''

    if ($file.Length -eq 0 -and $file.Name -ne '.gitkeep') {
        Add-Failure "Empty file: $relative"
    }

    if ($file.Extension -eq '.md' -or $file.Name -in @('README', 'LICENSE')) {
        $content = Read-Utf8 $file.FullName
        if ($content.Contains([char]0xFFFD)) {
            Add-Failure "Possible mojibake in: $relative"
        }
    }
}

$referencePatterns = @(
    '(?<![A-Za-z0-9_-])references/[A-Za-z0-9._/-]+\.md',
    '(?<![A-Za-z0-9_-])templates/[A-Za-z0-9._/-]+\.md',
    '(?<![A-Za-z0-9_-])examples/[A-Za-z0-9._/-]+\.md',
    '(?<![A-Za-z0-9_-])checklists/[A-Za-z0-9._/-]+\.md',
    '(?<![A-Za-z0-9_-])profiles/[A-Za-z0-9._/-]+\.md',
    '(?<![A-Za-z0-9_-])docs/[A-Za-z0-9._/-]+\.md',
    '(?<![A-Za-z0-9_-])end-to-end-examples/[A-Za-z0-9._/-]+\.md',
    '(?<![A-Za-z0-9_-])tests/[A-Za-z0-9._/-]+\.md'
)

$mentioned = New-Object System.Collections.Generic.HashSet[string]
foreach ($pattern in $referencePatterns) {
    foreach ($match in [regex]::Matches($skillText, $pattern)) {
        $mentioned.Add($match.Value) | Out-Null
    }
}

foreach ($relativePath in $mentioned) {
    if (-not (Test-Path -LiteralPath (Join-Path $Root $relativePath) -PathType Leaf)) {
        Add-Failure "SKILL.md references missing file: $relativePath"
    }
}

$gitignorePath = Join-Path $Root '.gitignore'
if (Test-Path -LiteralPath $gitignorePath) {
    $gitignore = Read-Utf8 $gitignorePath
    if ($gitignore -notmatch 'profiles/local/\*\.md') {
        Add-Warning '.gitignore should ignore profiles/local/*.md'
    }
    if ($gitignore -notmatch '!profiles/local/README\.md') {
        Add-Warning '.gitignore should keep profiles/local/README.md tracked'
    }
}

Write-Host ''
Write-Host "Files checked: $($allFiles.Count)"
Write-Host "SKILL.md lines: $skillLines"

if ($warnings.Count -gt 0) {
    Write-Host ''
    Write-Host 'Warnings:'
    foreach ($warning in $warnings) {
        Write-Host "  - $warning"
    }
}

if ($failures.Count -gt 0) {
    Write-Host ''
    Write-Host 'Failures:'
    foreach ($failure in $failures) {
        Write-Host "  - $failure"
    }
    exit 1
}

Write-Host ''
Write-Host 'Validation passed.'
