# Complete GitHub Setup Script
# This script will initialize git repos and push to GitHub

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "GitHub Repository Setup & Push" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# GitHub configuration
$username = "girirag"
$backendRepo = "backend-Kanban-board"
$frontendRepo = "Frontend-Kanban-board"

Write-Host ""
Write-Host "Pushing to these repositories:" -ForegroundColor Yellow
Write-Host "  Backend:  https://github.com/$username/$backendRepo" -ForegroundColor Cyan
Write-Host "  Frontend: https://github.com/$username/$frontendRepo" -ForegroundColor Cyan
Write-Host ""

# Setup Backend
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Setting up Backend Repository" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

$backendPath = "C:\Users\Giriraghav Kishore\projects\kanban-backend"
Set-Location $backendPath

Write-Host "Initializing git..." -ForegroundColor Yellow
git init

Write-Host "Adding files..." -ForegroundColor Yellow
git add .

Write-Host "Creating commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Kanban backend API"

Write-Host "Adding remote..." -ForegroundColor Yellow
git remote remove origin 2>$null
git remote add origin "https://github.com/$username/$backendRepo.git"

Write-Host "Setting branch to main..." -ForegroundColor Yellow
git branch -M main

Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Backend pushed successfully!" -ForegroundColor Green
} else {
    Write-Host "✗ Backend push failed. Check your credentials." -ForegroundColor Red
}

# Setup Frontend
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Setting up Frontend Repository" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

$frontendPath = "C:\Users\Giriraghav Kishore\projects\kanban-frontend"
Set-Location $frontendPath

Write-Host "Initializing git..." -ForegroundColor Yellow
git init

Write-Host "Adding files..." -ForegroundColor Yellow
git add .

Write-Host "Creating commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Kanban frontend"

Write-Host "Adding remote..." -ForegroundColor Yellow
git remote remove origin 2>$null
git remote add origin "https://github.com/$username/$frontendRepo.git"

Write-Host "Setting branch to main..." -ForegroundColor Yellow
git branch -M main

Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Frontend pushed successfully!" -ForegroundColor Green
} else {
    Write-Host "✗ Frontend push failed. Check your credentials." -ForegroundColor Red
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Your repositories are now available at:" -ForegroundColor Yellow
Write-Host "  Backend:  https://github.com/$username/$backendRepo" -ForegroundColor Cyan
Write-Host "  Frontend: https://github.com/$username/$frontendRepo" -ForegroundColor Cyan
Write-Host ""

Read-Host "Press Enter to exit"
