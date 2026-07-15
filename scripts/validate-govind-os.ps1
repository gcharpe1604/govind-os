[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()
$markdownFiles = Get-ChildItem -Path $root -Recurse -File -Filter '*.md' |
    Where-Object { $_.FullName -notmatch '[\\/]\.git[\\/]' }

function Get-RelativePathText([string]$BasePath, [string]$TargetPath) {
    $baseUri = [uri]($BasePath.TrimEnd([IO.Path]::DirectorySeparatorChar) + [IO.Path]::DirectorySeparatorChar)
    $targetUri = [uri]$TargetPath
    return [uri]::UnescapeDataString($baseUri.MakeRelativeUri($targetUri).ToString())
}

function Get-WordCount([string]$Path) {
    $text = Get-Content -Raw -LiteralPath $Path
    return [regex]::Matches($text, '\S+').Count
}

function Add-BudgetError([string]$Path, [int]$Maximum) {
    $count = Get-WordCount $Path
    if ($count -gt $Maximum) {
        $relative = Get-RelativePathText $root $Path
        $errors.Add("$relative has $count words; budget is $Maximum.")
    }
}

$absolutePattern = '(?i)(file:/{2,3}|(?<![a-z])[a-z]:[\\/]|OneDrive[\\/]Documents[\\/]opensrc[\\/]govind-os)'
$linkPattern = '\[[^\]]*\]\((?<target>[^)]+)\)'

foreach ($file in $markdownFiles) {
    $text = Get-Content -Raw -LiteralPath $file.FullName
    $relativeFile = Get-RelativePathText $root $file.FullName

    if ($text -match $absolutePattern) {
        $errors.Add("$relativeFile contains an absolute or machine-specific local path.")
    }

    foreach ($match in [regex]::Matches($text, $linkPattern)) {
        $target = $match.Groups['target'].Value.Trim().Trim('<', '>')
        $target = ($target -split '\s+"', 2)[0]

        if ($target -match '^(?i:https?://|mailto:|tel:|#)') { continue }
        if ($target -match '^(?i:file:|[a-z]:[\\/]|/)') {
            $errors.Add("$relativeFile contains non-portable link '$target'.")
            continue
        }

        $pathPart = ($target -split '#', 2)[0]
        if ([string]::IsNullOrWhiteSpace($pathPart)) { continue }

        $decoded = [uri]::UnescapeDataString($pathPart).Replace('/', [IO.Path]::DirectorySeparatorChar)
        $resolved = [IO.Path]::GetFullPath((Join-Path $file.DirectoryName $decoded))
        if (-not (Test-Path -LiteralPath $resolved)) {
            $errors.Add("$relativeFile links to missing target '$target'.")
        }
    }
}

$kernel = Join-Path $root 'AGENTS.md'
$router = Join-Path $root 'GOVIND_CORE.md'
Add-BudgetError $kernel 900
Add-BudgetError $router 900

Get-ChildItem (Join-Path $root 'playbooks') -File -Filter '*.md' |
    ForEach-Object { Add-BudgetError $_.FullName 600 }
Get-ChildItem (Join-Path $root 'agents') -File -Filter '*.md' |
    ForEach-Object { Add-BudgetError $_.FullName 250 }

$kernelText = Get-Content -Raw -LiteralPath $kernel
foreach ($heading in @(
    '## Authority',
    '## Context Budget',
    '## Scope Modes',
    '## Execution Loop',
    '## Evidence Rules',
    '## Risk and Verification',
    '## Safety and Git',
    '## Communication and Completion'
)) {
    if ($kernelText -notmatch [regex]::Escape($heading)) {
        $errors.Add("AGENTS.md is missing required section '$heading'.")
    }
}

$routerText = Get-Content -Raw -LiteralPath $router
foreach ($playbook in @('IMPLEMENT.md', 'DIAGNOSE.md', 'REVIEW.md', 'PR_CI.md', 'RESEARCH.md', 'DECIDE.md', 'DOCUMENT.md')) {
    if ($routerText -notmatch [regex]::Escape($playbook)) {
        $errors.Add("GOVIND_CORE.md does not route to $playbook.")
    }
}

$knownTopLevel = @(
    'AGENTS.md', 'README.md', 'GOVIND_CORE.md',
    'agents', 'career', 'core', 'docs', 'engineering', 'experience',
    'learning', 'open-source', 'playbooks', 'startup', 'templates', 'tests'
)
foreach ($file in $markdownFiles) {
    $relative = Get-RelativePathText $root $file.FullName
    $topLevel = ($relative -split '[\\/]', 2)[0]
    if ($knownTopLevel -notcontains $topLevel) {
        $errors.Add("$relative has no content class in docs/CONTENT_MAP.md.")
    }
}

$activeFiles = @($kernel, $router) +
    @(Get-ChildItem (Join-Path $root 'playbooks') -File -Filter '*.md' | ForEach-Object FullName) +
    @(Get-ChildItem (Join-Path $root 'agents') -File -Filter '*.md' | ForEach-Object FullName)
$paragraphOwners = @{}
foreach ($path in $activeFiles) {
    $text = Get-Content -Raw -LiteralPath $path
    foreach ($paragraph in ($text -split '(?:\r?\n){2,}')) {
        $normalized = (($paragraph -replace '\s+', ' ').Trim().ToLowerInvariant())
        if ($normalized.Length -lt 180) { continue }
        if (-not $paragraphOwners.ContainsKey($normalized)) { $paragraphOwners[$normalized] = @() }
        $paragraphOwners[$normalized] += Get-RelativePathText $root $path
    }
}
foreach ($entry in $paragraphOwners.GetEnumerator()) {
    if ($entry.Value.Count -gt 1) {
        $errors.Add("Duplicate active paragraph appears in: $($entry.Value -join ', ').")
    }
}

if ($errors.Count -gt 0) {
    Write-Host "Govind OS validation failed with $($errors.Count) issue(s):" -ForegroundColor Red
    $errors | Sort-Object -Unique | ForEach-Object { Write-Host "- $_" }
    exit 1
}

$kernelWords = Get-WordCount $kernel
$routerWords = Get-WordCount $router
$activeWords = ($activeFiles | Sort-Object -Unique | ForEach-Object { Get-WordCount $_ } | Measure-Object -Sum).Sum

Write-Host 'Govind OS validation passed.' -ForegroundColor Green
Write-Host "Markdown files: $($markdownFiles.Count)"
Write-Host "Kernel words: $kernelWords"
Write-Host "Router words: $routerWords"
Write-Host "Active operating words: $activeWords"
Write-Host "Approximate active tokens: $([math]::Round($activeWords * 1.33))"
