# Firebase Deployment Guide

## Prerequisites

1. **Install Firebase CLI**:
```bash
npm install -g firebase-tools
```

2. **Login to Firebase**:
```bash
firebase login
```

3. **Initialize Firebase in your project** (if not already done):
```bash
cd firstApp
firebase init
```

Select:
- Functions (for backend API)
- Hosting (optional, for frontend)

## Deployment Options

### Option 1: Firebase Cloud Functions (Recommended for Firebase)

#### Step 1: Install Dependencies
```bash
cd backend
pip install -r requirements_firebase.txt
```

#### Step 2: Deploy to Firebase Functions
```bash
cd ..
firebase deploy --only functions
```

Your API will be available at:
```
https://us-central1-firstapp-ddec4.cloudfunctions.net/api
```

### Option 2: Google Cloud Run (Better for FastAPI)

This is the RECOMMENDED approach for FastAPI applications.

#### Step 1: Create Dockerfile
Already created in `backend/Dockerfile`

#### Step 2: Enable Cloud Run API
```bash
gcloud services enable run.googleapis.com
```

#### Step 3: Deploy to Cloud Run
```bash
cd backend
gcloud run deploy kanban-backend \
  --source . \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated \
  --project firstapp-ddec4
```

Your API will be available at:
```
https://kanban-backend-[hash]-uc.a.run.app
```

### Option 3: Render (Easiest - Already Configured)

See `RENDER_DEPLOYMENT.md` for Render deployment instructions.

## Firebase Configuration

### 1. Firestore Database
Ensure Firestore is enabled:
1. Go to Firebase Console: https://console.firebase.google.com/project/firstapp-ddec4
2. Navigate to Firestore Database
3. Create database if not exists
4. Set rules (already in `firestore.rules`)

### 2. Deploy Firestore Rules
```bash
firebase deploy --only firestore:rules
```

### 3. Service Account
For Cloud Run, the service account is automatically configured.
For local testing, use `firebase-service-account.json`.

## Update Frontend API URL

After deployment, update the API URL in your frontend:

**File**: `src/lib/api.ts`

```typescript
// For Cloud Run
const API_BASE_URL = 'https://kanban-backend-[hash]-uc.a.run.app';

// For Cloud Functions
const API_BASE_URL = 'https://us-central1-firstapp-ddec4.cloudfunctions.net/api';

// For Render
const API_BASE_URL = 'https://your-app.onrender.com';
```

## Testing Deployment

### Test Health Endpoint
```bash
curl https://your-deployed-url/health
```

### Test Get Tasks
```bash
curl https://your-deployed-url/tasks
```

### Test Create Task
```bash
curl -X POST https://your-deployed-url/tasks \
  -H "Content-Type: application/json" \
  -d '{"text":"Test Task","column":"Planning"}'
```

## Troubleshooting

### Cloud Run Issues
- Check logs: `gcloud run logs read --service kanban-backend`
- Verify region: `us-central1`
- Check permissions: Service account needs Firestore access

### Firebase Functions Issues
- Check logs in Firebase Console
- Verify Python version: 3.11
- Check function timeout settings

### CORS Issues
- CORS is configured for all origins (`*`)
- For production, update to specific domains in `main_firebase.py`

## Cost Considerations

### Cloud Run (Recommended)
- Free tier: 2 million requests/month
- Pay per use after free tier
- Scales to zero (no cost when idle)

### Firebase Functions
- Free tier: 2 million invocations/month
- Limited to 540,000 GB-seconds/month
- May have cold start delays

### Render
- Free tier available
- Spins down after inactivity
- Good for development/testing

## Production Checklist

- [ ] Deploy Firestore rules
- [ ] Update CORS origins to specific domains
- [ ] Set up monitoring/logging
- [ ] Configure custom domain (optional)
- [ ] Set up CI/CD pipeline
- [ ] Enable Firebase Authentication (if needed)
- [ ] Set up backup strategy
- [ ] Configure rate limiting
- [ ] Add API key authentication (if needed)

## Quick Deploy Commands

### Deploy Everything
```bash
# From firstApp directory
firebase deploy
```

### Deploy Only Backend (Cloud Run)
```bash
cd backend
gcloud run deploy kanban-backend --source . --platform managed --region us-central1 --allow-unauthenticated --project firstapp-ddec4
```

### Deploy Only Firestore Rules
```bash
firebase deploy --only firestore:rules
```

## Environment Variables (Cloud Run)

Cloud Run automatically provides:
- `PORT` - Set by Cloud Run
- Application Default Credentials for Firebase

No additional environment variables needed!

## Next Steps

1. Deploy backend to Cloud Run (recommended)
2. Get the deployed URL
3. Update frontend API URL
4. Deploy frontend to Vercel/Netlify/Firebase Hosting
5. Test end-to-end functionality