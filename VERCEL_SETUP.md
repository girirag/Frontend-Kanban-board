# Vercel Environment Variable Setup

## Problem
Your Vercel deployment is trying to connect to `localhost:8002` instead of the Render backend.

## Solution
Add the environment variable in Vercel Dashboard.

---

## Steps to Fix:

### 1. Go to Vercel Dashboard
https://vercel.com/dashboard

### 2. Select Your Project
Click on: `frontend-kanban-board-one` (or your project name)

### 3. Go to Settings
Click on "Settings" tab at the top

### 4. Go to Environment Variables
Click on "Environment Variables" in the left sidebar

### 5. Add New Environment Variable

**Variable Name:**
```
VITE_API_URL
```

**Value:**
```
https://backend-kanban-board-q2ft.onrender.com
```

**Environments:** Select all:
- [x] Production
- [x] Preview
- [x] Development

### 6. Click "Save"

### 7. Redeploy
After saving, you need to redeploy:
- Go to "Deployments" tab
- Click on the latest deployment
- Click "Redeploy" button
- Or push a new commit to trigger automatic deployment

---

## Alternative: Using Vercel CLI

If you have Vercel CLI installed:

```bash
# Install Vercel CLI (if not installed)
npm install -g vercel

# Login
vercel login

# Set environment variable
vercel env add VITE_API_URL production

# When prompted, enter:
https://backend-kanban-board-q2ft.onrender.com

# Redeploy
vercel --prod
```

---

## Verify the Fix

After redeploying:

1. Open: https://frontend-kanban-board-one.vercel.app
2. Open browser console (F12)
3. Look for: `API Base URL: https://backend-kanban-board-q2ft.onrender.com`
4. Should see: `API Response: 200 OK`
5. Connection status should show: "Connected to Firebase"

---

## Current Issue

**What's happening:**
- Vercel is using the fallback/default value
- The default is pointing to localhost:8002
- This doesn't exist, so connection fails

**Why:**
- Environment variable `VITE_API_URL` is not set in Vercel
- SvelteKit needs environment variables set at build time

**Fix:**
- Add `VITE_API_URL` in Vercel Dashboard
- Redeploy the application

---

## Important Notes

1. **Environment variables must start with `VITE_`** for SvelteKit to expose them to the client
2. **Changes require redeployment** - Environment variables are baked into the build
3. **Check the console** - After redeploying, verify the API URL in browser console

---

## Quick Reference

| Setting | Value |
|---------|-------|
| **Variable Name** | `VITE_API_URL` |
| **Value** | `https://backend-kanban-board-q2ft.onrender.com` |
| **Environments** | Production, Preview, Development |

---

## After Setting Up

Your app will:
- ✅ Connect to Render backend
- ✅ Save tasks to Firebase
- ✅ Show "Connected to Firebase" status
- ✅ Persist data across sessions