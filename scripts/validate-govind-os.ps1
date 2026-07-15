[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()
$markdownFiles = @(Get-ChildItem -Path $root -Recurse -File -Filter '*.md' |
    Where-Object { $_.FullName -notmatch '[\\/]\.git[\\/]' })

function Get-RelativePathText([string]$BasePath, [string]$TargetPath) {
    $baseUri = [uri]($BasePath.TrimEnd([IO.Path]::DirectorySeparatorChar) + [IO.Path]::DirectorySeparatorChar)
    $targetUri = [uri]$TargetPath
    return [uri]::UnescapeDataString($baseUri.MakeRelativeUri($targetUri).ToString())
}

function Get-WordCount([string]$Path) {
    return [regex]::Matches((Get-Content -Raw -LiteralPath $Path), '\S+').Count
}

function Add-BudgetError([string]$Path, [int]$Maximum) {
    if (-not (Test-Path -LiteralPath $Path)) {
        $errors.Add("Missing required path: $(Get-RelativePathText $root $Path)")
        return
    }
    $count = Get-WordCount $Path
    if ($count -gt $Maximum) {
        $errors.Add("$(Get-RelativePathText $root $Path) has $count words; budget is $Maximum.")
    }
}

$requiredPaths = @(
    'AGENTS.md', 'GOVIND_CORE.md', 'README.md',
    'docs/CONTENT_MAP.md', 'docs/FILE_DISPOSITION.md',
    'experience/LESSONS.md', 'experience/DECISION_LOG.md',
    'playbooks/IMPLEMENT.md', 'playbooks/DIAGNOSE.md', 'playbooks/REVIEW.md',
    'playbooks/PR_CI.md', 'playbooks/RESEARCH.md', 'playbooks/DECIDE.md',
    'playbooks/DOCUMENT.md', 'tests/ROUTING_SCENARIOS.md'
)
foreach ($relative in $requiredPaths) {
    if (-not (Test-Path -LiteralPath (Join-Path $root $relative))) {
        $errors.Add("Missing required path: $relative")
    }
}

$retiredDirectories = @('agents', 'career', 'core', 'engineering', 'learning', 'open-source', 'startup')
foreach ($relative in $retiredDirectories) {
    if (Test-Path -LiteralPath (Join-Path $root $relative)) {
        $errors.Add("Retired directory was restored without a routing need: $relative")
    }
}

$absolutePattern = '(?i)(file:/{2,3}|(?<![a-z])[a-z]:[\\/]|OneDrive[\\/]Documents[\\/]opensrc[\\/]govind-os)'
$linkPattern = '\[[^\]]*\]\((?<target>[^)]+)\)'
$stalePattern = '(?i)(\[EMPTY|TO BE POPULATED|\bTBD\b)'

foreach ($file in $markdownFiles) {
    $text = Get-Content -Raw -LiteralPath $file.FullName
    $relativeFile = Get-RelativePathText $root $file.FullName

    if ([string]::IsNullOrWhiteSpace($text)) { $errors.Add("$relativeFile is empty.") }
    if ($text -match $absolutePattern) { $errors.Add("$relativeFile contains a machine-specific local path.") }
    if ($text -match $stalePattern) { $errors.Add("$relativeFile contains a stale placeholder marker.") }

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
Add-BudgetError $router 450
Add-BudgetError (Join-Path $root 'README.md') 600

$playbookFiles = @(Get-ChildItem (Join-Path $root 'playbooks') -File -Filter '*.md')
$templateFiles = @(Get-ChildItem (Join-Path $root 'templates') -File -Filter '*.md')
$experienceFiles = @(Get-ChildItem (Join-Path $root 'experience') -File -Filter '*.md')
$playbookFiles | ForEach-Object { Add-BudgetError $_.FullName 600 }
$templateFiles | ForEach-Object { Add-BudgetError $_.FullName 250 }
$experienceFiles | ForEach-Object { Add-BudgetError $_.FullName 900 }

$kernelText = if (Test-Path $kernel) { Get-Content -Raw -LiteralPath $kernel } else { '' }
foreach ($heading in @(
    '## Authority', '## Context Budget', '## Scope Modes', '## Execution Loop',
    '## Evidence Rules', '## Risk and Verification', '## Safety and Git',
    '## Communication and Completion'
)) {
    if ($kernelText -notmatch [regex]::Escape($heading)) {
        $errors.Add("AGENTS.md is missing required section '$heading'.")
    }
}

$routerText = if (Test-Path $router) { Get-Content -Raw -LiteralPath $router } else { '' }
foreach ($playbook in @('IMPLEMENT.md', 'DIAGNOSE.md', 'REVIEW.md', 'PR_CI.md', 'RESEARCH.md', 'DECIDE.md', 'DOCUMENT.md')) {
    if ($routerText -notmatch [regex]::Escape($playbook)) {
        $errors.Add("GOVIND_CORE.md does not route to $playbook.")
    }
}

$knownTopLevel = @(
    'AGENTS.md', 'README.md', 'GOVIND_CORE.md',
    'docs', 'experience', 'playbooks', 'templates', 'tests'
)
foreach ($file in $markdownFiles) {
    $relative = Get-RelativePathText $root $file.FullName
    $topLevel = ($relative -split '[\\/]', 2)[0]
    if ($knownTopLevel -notcontains $topLevel) {
        $errors.Add("$relative has no content class in docs/CONTENT_MAP.md.")
    }
}

$activeFiles = @($kernel, $router) + @($playbookFiles | ForEach-Object FullName)
$paragraphOwners = @{}
foreach ($path in $activeFiles) {
    if (-not (Test-Path $path)) { continue }
    foreach ($paragraph in ((Get-Content -Raw -LiteralPath $path) -split '(?:\r?\n){2,}')) {
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

$allWords = ($markdownFiles | ForEach-Object { Get-WordCount $_.FullName } | Measure-Object -Sum).Sum
if ($allWords -gt 9000) { $errors.Add("Markdown corpus has $allWords words; budget is 9000.") }

if ($errors.Count -gt 0) {
    Write-Host "Govind OS validation failed with $($errors.Count) issue(s):" -ForegroundColor Red
    $errors | Sort-Object -Unique | ForEach-Object { Write-Host "- $_" }
    exit 1
}

$kernelWords = Get-WordCount $kernel
$routerWords = Get-WordCount $router
$maxPlaybookWords = ($playbookFiles | ForEach-Object { Get-WordCount $_.FullName } | Measure-Object -Maximum).Maximum
$maxRouteWords = $kernelWords + $routerWords + $maxPlaybookWords

Write-Host 'Govind OS validation passed.' -ForegroundColor Green
Write-Host "Markdown files: $($markdownFiles.Count)"
Write-Host "Corpus words: $allWords"
Write-Host "Approximate corpus tokens: $([math]::Round($allWords * 1.33))"
Write-Host "Largest normal route words: $maxRouteWords"
Write-Host "Approximate largest normal route tokens: $([math]::Round($maxRouteWords * 1.33))"
