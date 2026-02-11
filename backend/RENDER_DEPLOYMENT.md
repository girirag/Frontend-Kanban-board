# Render Deployment Guide

## Quick Deploy

### Start Command:
```bash
uvicorn main:app --host 0.0.0.0 --port $PORT
```

### Build Command:
```bash
pip install -r requirements.txt
```

## Step-by-Step Deployment

### 1. Create New Web Service on Render
- Go to https://render.com/
- Click "New +" → "Web Service"
- Connect your GitHub repository: `girirag/Kanban-project`

### 2. Configure Service Settings
- **Name**: `kanban-backend` (or your preferred name)
- **Region**: Choose closest to your users
- **Branch**: `main`
- **Root Directory**: `firstApp/backend`
- **Runtime**: `Python 3`
- **Build Command**: `pip install -r requirements.txt`
- **Start Command**: `uvicorn main:app --host 0.0.0.0 --port $PORT`

### 3. Environment Variables
Add these in Render dashboard:
- `PYTHON_VERSION`: `3.11.0`

### 4. Add Firebase Service Account
In Render dashboard:
- Go to "Environment" tab
- Add "Secret Files"
- File name: `firebase-service-account.json`
- Content: Paste your Firebase service account JSON

### 5. Update Frontend API URL
After deployment, update the API URL in your frontend:
- File: `firstApp/src/lib/api.ts`
- Change: `const API_BASE_URL = 'https://your-render-app.onrender.com';`

## Important Notes

1. **Free Tier**: Render free tier spins down after inactivity (takes ~30s to wake up)
2. **Firebase Credentials**: Must be added as a secret file in Render
3. **CORS**: Already configured for common ports, add your frontend URL if needed
4. **Health Check**: Render will use `/health` endpoint automatically

## Testing Deployment

After deployment, test these endpoints:
```bash
# Health check
curl https://your-app.onrender.com/health

# Get tasks
curl https://your-app.onrender.com/tasks

# API docs
https://your-app.onrender.com/docs
```

## Troubleshooting

### Service won't start:
- Check logs in Render dashboard
- Verify `requirements.txt` is correct
- Ensure Firebase credentials are added

### Firebase connection fails:
- Verify secret file name is exactly `firebase-service-account.json`
- Check file content is valid JSON
- Ensure project_id matches: `firstapp-ddec4`

### CORS errors:
- Add your frontend URL to CORS origins in `main.py`
- Example: `"https://your-frontend.vercel.app"`