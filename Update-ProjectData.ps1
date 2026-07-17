# Project Data Integrity Check — 3887 Seneca / Luxe Loft 716
param([switch]$ValidateOnly = $false)

Write-Host "Starting Project Data Integrity Check..." -ForegroundColor Green

if (-not (Test-Path "project-data.json")) {
    Write-Host "project-data.json not found!" -ForegroundColor Red
    exit 1
}

$d = Get-Content "project-data.json" -Raw | ConvertFrom-Json
Write-Host "Loaded: $($d.project.brand) @ $($d.project.name)" -ForegroundColor Green

$issues = @()

# Contract locks
if ([int]$d.project.contract.purchase_price -ne 500000) { $issues += "purchase_price expected 500000" }
if ([int]$d.project.contract.seller_concession -ne 50000) { $issues += "seller_concession expected 50000" }
if ([int]$d.project.contract.deposit -ne 10000) { $issues += "deposit expected 10000" }
if ([int]$d.project.contract.net_consideration -ne 450000) { $issues += "net_consideration expected 450000" }

# Luxe underwriting locks
if ([int]$d.financial.gross_potential_income -ne 136800) { $issues += "GPI expected 136800" }
if ([int]$d.financial.noi -ne 95920) { $issues += "NOI expected 95920" }
if ([int]$d.units.salon_suites.count -ne 9) { $issues += "suite count expected 9" }
if ([int]$d.units.salon_suites.annual_revenue -ne 108000) { $issues += "suite revenue expected 108000" }

$resMo = [int]$d.units.residential.combined_monthly_rent
$resYr = [int]$d.units.residential.combined_annual_rent
if ($resMo -ne 2400) { $issues += "Residential monthly underwriting baseline expected 2400 (Luxe deck), got $resMo" }
if ($resYr -ne ($resMo * 12)) { $issues += "Residential annual ($resYr) != monthly*12 ($($resMo*12))" }

$pkg = $d.project.financing.package_file
if ($pkg -and -not (Test-Path $pkg)) { $issues += "Bank package missing: $pkg" }
$contract = $d.project.contract.file
if ($contract -and -not (Test-Path $contract)) { $issues += "Contract file missing: $contract" }

Write-Host ""
Write-Host "Acquisition: `$$($d.project.contract.purchase_price) - `$$($d.project.contract.seller_concession) concession = net `$$($d.project.contract.net_consideration)" -ForegroundColor Cyan
Write-Host "Income: suites `$$($d.units.salon_suites.annual_revenue)/yr + residential `$$resMo/mo | GPI `$$($d.financial.gross_potential_income) | NOI `$$($d.financial.noi) | DSCR $($d.financial.dscr)"
if ($d.units.residential.discrepancy_note) {
    Write-Host "NOTE: $($d.units.residential.discrepancy_note)" -ForegroundColor Yellow
}

if ($issues.Count -gt 0) {
    Write-Host "`nIssues:" -ForegroundColor Yellow
    $issues | ForEach-Object { Write-Host "  - $_" -ForegroundColor Yellow }
    exit 1
}

Write-Host "`nValidation passed." -ForegroundColor Green
if (-not $ValidateOnly) {
    Write-Host "Tip: re-run with -ValidateOnly before deploy."
}
