# Environment Variables

## Backend Environment Variables

### Required for Production (Render/Heroku/etc.)

#### 1. PORT
- **Description**: Server port number (automatically set by hosting platforms)
- **Default**: `8001` (local development)
- **Usage**: `PORT=8001`
- **Required**: No (auto-set by Render)
- **Example**: `10000` (Render assigns this automatically)

#### 2. PYTHON_VERSION
- **Description**: Python runtime version
- **Default**: System default
- **Usage**: `PYTHON_VERSION=3.11.0`
- **Required**: Recommended for Render
- **Example**: `3.11.0`

### Firebase Configuration (Alternative to Service Account File)

These are optional if you're using `firebase-service-account.json` file:

#### 3. FIREBASE_PROJECT_ID
- **Description**: Firebase project identifier
- **Default**: None
- **Usage**: `FIREBASE_PROJECT_ID=firstapp-ddec4`
- **Required**: No (use service account file instead)
- **Current Value**: `firstapp-ddec4`

#### 4. FIREBASE_PRIVATE_KEY_ID
- **Description**: Firebase private key identifier
- **Default**: None
- **Usage**: `FIREBASE_PRIVATE_KEY_ID=your-key-id`
- **Required**: No (use service account file instead)

#### 5. FIREBASE_PRIVATE_KEY
- **Description**: Firebase private key (PEM format)
- **Default**: None
- **Usage**: `FIREBASE_PRIVATE_KEY="-----BEGIN PRIVATE KEY-----\n..."`
- **Required**: No (use service account file instead)

#### 6. FIREBASE_CLIENT_EMAIL
- **Description**: Firebase service account email
- **Default**: None
- **Usage**: `FIREBASE_CLIENT_EMAIL=firebase-adminsdk-xxxxx@firstapp-ddec4.iam.gserviceaccount.com`
- **Required**: No (use service account file instead)

#### 7. FIREBASE_CLIENT_ID
- **Description**: Firebase client identifier
- **Default**: None
- **Usage**: `FIREBASE_CLIENT_ID=123456789`
- **Required**: No (use service account file instead)

#### 8. FIREBASE_AUTH_URI
- **Description**: Firebase authentication URI
- **Default**: `https://accounts.google.com/o/oauth2/auth`
- **Usage**: `FIREBASE_AUTH_URI=https://accounts.google.com/o/oauth2/auth`
- **Required**: No (use service account file instead)

#### 9. FIREBASE_TOKEN_URI
- **Description**: Firebase token URI
- **Default**: `https://oauth2.googleapis.com/token`
- **Usage**: `FIREBASE_TOKEN_URI=https://oauth2.googleapis.com/token`
- **Required**: No (use service account file instead)

## Frontend Environment Variables

### API Configuration

#### 1. API_BASE_URL (Hardcoded in code)
- **Description**: Backend API endpoint URL
- **File**: `src/lib/api.ts`
- **Default**: `http://localhost:8001`
- **Production**: Update to your Render URL
- **Example**: `https://kanban-backend.onrender.com`

## Current Project Configuration

### Backend (Local Development)
```bash
PORT=8001
```

### Backend (Render Deployment)
```bash
PORT=$PORT  # Auto-set by Render
PYTHON_VERSION=3.11.0
```

### Frontend (Local Development)
```typescript
// src/lib/api.ts
const API_BASE_URL = 'http://localhost:8001';
```

### Frontend (Production)
```typescript
// src/lib/api.ts
const API_BASE_URL = 'https://your-app.onrender.com';
```

## Secret Files (Render)

Instead of environment variables, use Render's Secret Files feature:

### firebase-service-account.json
- **Type**: Secret File
- **Path**: `firebase-service-account.json`
- **Content**: Complete Firebase service account JSON
- **Required**: Yes (for Firebase integration)

## Setup Instructions

### Local Development
1. No environment variables needed
2. Use `firebase-service-account.json` file in `backend/` directory
3. Backend runs on port 8001 by default

### Render Deployment
1. Add environment variable:
   - `PYTHON_VERSION=3.11.0`

2. Add secret file:
   - Name: `firebase-service-account.json`
   - Content: Your Firebase service account JSON

3. Update frontend API URL in `src/lib/api.ts`

### Alternative: Using .env file (Not Currently Implemented)
If you want to use environment variables instead of the service account file:

1. Create `.env` file in `backend/` directory
2. Copy contents from `.env.example`
3. Fill in all Firebase values
4. Update `main.py` to read from environment variables

## Security Notes

- ✅ Never commit `.env` files to git
- ✅ Never commit `firebase-service-account.json` to git
- ✅ Use Render's Secret Files for sensitive data
- ✅ Rotate Firebase credentials if accidentally exposed
- ✅ Use different Firebase projects for dev/staging/production