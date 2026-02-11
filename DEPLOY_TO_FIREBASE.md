# Deploy Backend to Firebase/Google Cloud

## Quick Start - Deploy to Google Cloud Run (Recommended)

### Prerequisites
1. Install Google Cloud SDK: https://cloud.google.com/sdk/docs/install
2. Login to Google Cloud:
```bash
gcloud auth login
gcloud config set project firstapp-ddec4
```

### Deploy with One Command

**Windows:**
```bash
cd backend
deploy_cloudrun.bat
```

**Mac/Linux:**
```bash
cd backend
gcloud run deploy kanban-backend \
  --source . \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated \
  --project firstapp-ddec4
```

### What Happens:
1. Cloud Run builds your Docker container
2. Deploys to Google Cloud
3. Provides a public URL
4. Automatically connects to Firebase (same project)

### After Deployment:
1. Copy the URL from the output (e.g., `https://kanban-backend-xxx-uc.a.run.app`)
2. Update `firstApp/src/lib/api.ts`:
```typescript
const API_BASE_URL = 'https://your-cloud-run-url';
```

## Alternative: Deploy to Render

See `backend/RENDER_DEPLOYMENT.md` for Render deployment.

## Files Created for Deployment:

- `backend/Dockerfile` - Container configuration
- `backend/.dockerignore` - Files to exclude from container
- `backend/deploy_cloudrun.bat` - Windows deployment script
- `backend/main_firebase.py` - Firebase-optimized version (optional)
- `firebase.json` - Firebase configuration
- `firestore.rules` - Database security rules

## Deployment Comparison:

| Platform | Cost | Setup | Speed | Best For |
|----------|------|-------|-------|----------|
| Cloud Run | Free tier generous | Easy | Fast | Production |
| Render | Free tier available | Easiest | Medium | Development |
| Firebase Functions | Limited free tier | Medium | Slow cold start | Firebase-heavy apps |

## Recommended: Google Cloud Run

Why Cloud Run?
- ✅ Same project as Firebase (seamless integration)
- ✅ Generous free tier (2M requests/month)
- ✅ Fast performance
- ✅ Scales automatically
- ✅ No cold starts on free tier
- ✅ Built-in Firebase authentication

## Next Steps:

1. Deploy backend to Cloud Run
2. Get the deployed URL
3. Update frontend API URL
4. Deploy frontend to Vercel/Netlify
5. Test the full application

## Troubleshooting:

### "gcloud: command not found"
Install Google Cloud SDK: https://cloud.google.com/sdk/docs/install

### "Permission denied"
Run: `gcloud auth login`

### "Project not found"
Run: `gcloud config set project firstapp-ddec4`

### CORS errors after deployment
CORS is already configured for all origins. If issues persist, check browser console.

## Support:

For detailed instructions, see:
- `backend/FIREBASE_DEPLOYMENT.md` - Complete deployment guide
- `backend/RENDER_DEPLOYMENT.md` - Render deployment guide