Write-Host "Pushing Frontend to GitHub..." -ForegroundColor Cyan

$frontendPath = "C:\Users\Giriraghav Kishore\projects\kanban-frontend"
Set-Location $frontendPath

git init
git add .
git commit -m "Initial commit: Kanban frontend"
git remote remove origin 2>$null
git remote add origin https://github.com/girirag/Frontend-Kanban-board.git
git branch -M main
git push -u origin main

Write-Host ""
Write-Host "Frontend pushed to: https://github.com/girirag/Frontend-Kanban-board" -ForegroundColor Green
