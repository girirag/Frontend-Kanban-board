@echo off
echo ========================================
echo Deploying Kanban Backend to Cloud Run
echo ========================================
echo.

echo Checking if gcloud is installed...
gcloud --version
if %errorlevel% neq 0 (
    echo ERROR: gcloud CLI not found!
    echo Please install: https://cloud.google.com/sdk/docs/install
    pause
    exit /b 1
)

echo.
echo Deploying to Cloud Run...
echo Project: firstapp-ddec4
echo Region: us-central1
echo.

gcloud run deploy kanban-backend ^
  --source . ^
  --platform managed ^
  --region us-central1 ^
  --allow-unauthenticated ^
  --project firstapp-ddec4 ^
  --memory 512Mi ^
  --cpu 1 ^
  --timeout 300 ^
  --max-instances 10

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo Deployment Successful!
    echo ========================================
    echo.
    echo Your API is now live!
    echo Check the URL above and update it in:
    echo   - firstApp/src/lib/api.ts
    echo.
) else (
    echo.
    echo ========================================
    echo Deployment Failed!
    echo ========================================
    echo Please check the error messages above.
    echo.
)

pause