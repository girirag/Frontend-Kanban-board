# Add Firebase to Render Backend

Your backend is deployed at: **https://backend-kanban-board-q2ft.onrender.com**

Currently, Firebase is NOT connected (using file backup instead). To enable Firebase:

## Steps to Add Firebase Credentials to Render

### 1. Go to Render Dashboard
- Open: https://dashboard.render.com/
- Select your service: `backend-kanban-board-q2ft`

### 2. Add Firebase Service Account as Secret File

#### Option A: Using Secret Files (Recommended)
1. Go to your service dashboard
2. Click on "Environment" tab
3. Scroll to "Secret Files" section
4. Click "Add Secret File"
5. Fill in:
   - **Filename**: `firebase-service-account.json`
   - **Contents**: Copy the entire content from your local `backend/firebase-service-account.json`
6. Click "Save Changes"

#### Option B: Using Environment Variables
Alternatively, add these environment variables in Render:

```
FIREBASE_TYPE=service_account
FIREBASE_PROJECT_ID=firstapp-ddec4
FIREBASE_PRIVATE_KEY_ID=06249592a103030d5902c5c2cc0d5a2191644893
FIREBASE_PRIVATE_KEY=-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDwtA2Up7uT3oEI\n7Br9B2OIweJUwICNovTa/4cHTlNNvdzORHLkFKNBoYcSJW0dBuzbnK0xiI6GTDFJ\naWyeGK+ze8IxpDigMj80yem413+WF6ee9lu76E2vZdd5XjK3p/PQ4fzvSuq7kJzf\njqzX1LRf29CuOEA4PLcgkCDxyQOVqAk5iKiztLil/ZLqTLoJrVYm+ulTG9XHcXkQ\n565nXR/mPl5z9WjoB1/eR0k4yO91R56xE+5r9WdFcT9wBPwPWeUqh7uaXSzyTmIw\nr6gHHNamx15P5VrW0Zd3dTcYlhrWwKH9ibAFlsSniGJPe7d2WeWpaAEOOOmG4RLH\nzvGcF+iRAgMBAAECggEAdXaIghjwsxKMSbxe10f5zM1BFDb1BSmW8CBu1qPkhzW2\nQXqpzqA7o1WeQr685sNwZyOoaVnIo8Ue8EJgXS6S37XvaKZJc/PRYIOAaVHQ04Ar\nrqluzt5ousWqR3Iuse1mUHNYKbaXonzJ8VcBBjqo43az+bE9tbP7cgqj6Ro9g5QQ\nwNlhU3+rVQEL82klSzm/YH10rPEYEPv4H3sMvCqFInJ8L+kdxN6PFToh5LXcXCSP\nYyg7jPqokjSKCNBaIF0R3b5cdD3ahJr1s3nMawdl6fYvZeGTJvYTMv02RQ9mtP1N\niraSw4jA7WSpPLG2A8zrseSWHvMSWQkPYv0yyuat+QKBgQD+nRR8dUBeO1tpy3Nz\ngM7OJ5UDyChZ21oIkuRYyZLH7XPHZ5DbqcwMz1bX2SbW8VmCi+V1dF+ospVGPVmW\nUhdbUFNhXRRnE9ZV5yIuiXM3zgnQ9KHzaVN+/DsI/+jELUwwGAbSCGPuAXqVw+L0\nFu5IFqdgZHCWDWs+FcpOeHGDRwKBgQDyA5Uulxq6ZrEzkhrTpqtxEiNOTXJEbzR8\npcEF/m09qUsvb1maqKQWd0rOAsyG7e8zyvUz4OodkG7aqG29PSFZmD7ea8GF1E6x\nvKU3fsCukpaTS5lEnq2sUOVrFqmgVQ4ovDkaEesIzb5XXVK31YsX4CNCSzlKjnwe\nduh+xBixZwKBgE6gF0lvs9bloY8EArzyU+qZkoy+bKeC80Seh+FbLfaLPyuesb8D\nqj1ycbDqH/JUSX3k0ZD5xOiFbU9pdpbS9t996KGyarCCEbgpTgbs7yWWfLWINdLC\n/cPDBD/9NtYN3u8jHEgTyzgeQMqq2RTjV+XvCPTdT18m+a0McZLV4sfVAoGAObqz\nDk8LGCXA5U1Xyt76DFnIRDhjJoHkYktjtNtREaFdhu4n0KWjppxEIso2IYWGRrOG\nNB7VmcHHP69npfl8CBQyAvpvSk4vi2Q1gPxiWAItmuswn1a+lNkjMJ1STyWa4Aqu\nEFLv3sS9P7fKMIHm0QYtQvYQr4E3iEjTAtIiFccCgYEAxizMX6jZs6csjHKnbmeM\nbQnuoDhBiQWO8APf578pZVOOx5stbTOw5x240zZrAt98hyqHjuG1KWS2z8feNdTa\nwQ/BZ47VCSsw58rROSFt4wmP298LTYOy6Du2BPeuQB2gK7ftWi7TeE6lswHSx8qs\n1388MkPlPDpjqxeluXXsIbA=\n-----END PRIVATE KEY-----\n
FIREBASE_CLIENT_EMAIL=firebase-adminsdk-fbsvc@firstapp-ddec4.iam.gserviceaccount.com
FIREBASE_CLIENT_ID=106260802712545963145
FIREBASE_AUTH_URI=https://accounts.google.com/o/oauth2/auth
FIREBASE_TOKEN_URI=https://oauth2.googleapis.com/token
FIREBASE_AUTH_PROVIDER_CERT_URL=https://www.googleapis.com/oauth2/v1/certs
FIREBASE_CLIENT_CERT_URL=https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40firstapp-ddec4.iam.gserviceaccount.com
FIREBASE_UNIVERSE_DOMAIN=googleapis.com
```

### 3. Restart Service
After adding the secret file or environment variables:
1. Render will automatically redeploy
2. Wait for deployment to complete
3. Check logs to verify Firebase connection

### 4. Verify Firebase Connection
Test the health endpoint:
```bash
curl https://backend-kanban-board-q2ft.onrender.com/health
```

You should see:
```json
{
  "status": "healthy",
  "firebase_connected": true,
  "storage": "firebase"
}
```

## Current Status

✅ Backend deployed: https://backend-kanban-board-q2ft.onrender.com
✅ API endpoints working
⚠️ Firebase not connected (using file backup)
✅ Frontend configured to use Render backend

## Next Steps

1. Add Firebase credentials to Render (follow steps above)
2. Verify Firebase connection
3. Test creating/updating tasks
4. Deploy frontend to production (Vercel/Netlify)

## Troubleshooting

### Service won't start after adding credentials
- Check Render logs for errors
- Verify JSON syntax in secret file
- Ensure filename is exactly `firebase-service-account.json`

### Firebase still not connected
- Check that project_id matches: `firstapp-ddec4`
- Verify private key format (should have `\n` for line breaks)
- Check Render logs for Firebase initialization errors

### Tasks not persisting
- Without Firebase, tasks are stored in file backup
- File backup resets when service restarts
- Add Firebase credentials for persistent storage