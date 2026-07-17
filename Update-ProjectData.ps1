# Project Data Integrity Check — 3887 Seneca
param([switch]$ValidateOnly = $false)

Write-Host "Starting Project Data Integrity Check..." -ForegroundColor Green

if (-not (Test-Path "project-data.json")) {
    Write-Host "project-data.json not found!" -ForegroundColor Red
    exit 1
}

$d = Get-Content "project-data.json" -Raw | ConvertFrom-Json
Write-Host "Project data loaded: $($d.project.name)" -ForegroundColor Green

$issues = @()

$resMo = [int]$d.units.residential.combined_monthly_rent
$resYr = [int]$d.units.residential.combined_annual_rent
if ($resMo -ne 2600) { $issues += "Residential monthly rent expected 2600, got $resMo" }
if ($resYr -ne ($resMo * 12)) { $issues += "Residential annual ($resYr) != monthly*12 ($($resMo*12))" }

if (-not $d.project.acquiring_entity) { $issues += "Missing acquiring_entity" }
if (-not $d.units.salon_suites) { $issues += "Missing salon_suites block" }

$pkg = $d.project.financing.package_file
if ($pkg -and -not (Test-Path $pkg)) { $issues += "Lender package missing on disk: $pkg" }

Write-Host ""
Write-Host "Known income:" -ForegroundColor Cyan
Write-Host "  Residential: `$$resMo/mo (`$$resYr/yr)"
Write-Host "  Salon suites: $($d.units.salon_suites.count) — $($d.units.salon_suites.blocker)"

if ($issues.Count -gt 0) {
    Write-Host "`nIssues:" -ForegroundColor Yellow
    $issues | ForEach-Object { Write-Host "  - $_" -ForegroundColor Yellow }
    exit 1
}

Write-Host "`nValidation passed (suite SF still TBD)." -ForegroundColor Green
if (-not $ValidateOnly) {
    Write-Host "Tip: edit project-data.json then re-run with -ValidateOnly before deploy."
}
