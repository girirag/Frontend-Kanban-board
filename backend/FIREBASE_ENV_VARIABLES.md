# Firebase Environment Variables

## Complete List of Firebase Environment Variables

These are extracted from your `firebase-service-account.json` file. Use these if you prefer environment variables over the JSON file.

### 1. FIREBASE_TYPE
```
FIREBASE_TYPE=service_account
```

### 2. FIREBASE_PROJECT_ID
```
FIREBASE_PROJECT_ID=firstapp-ddec4
```

### 3. FIREBASE_PRIVATE_KEY_ID
```
FIREBASE_PRIVATE_KEY_ID=06249592a103030d5902c5c2cc0d5a2191644893
```

### 4. FIREBASE_PRIVATE_KEY
```
FIREBASE_PRIVATE_KEY="-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDwtA2Up7uT3oEI
7Br9B2OIweJUwICNovTa/4cHTlNNvdzORHLkFKNBoYcSJW0dBuzbnK0xiI6GTDFJ
aWyeGK+ze8IxpDigMj80yem413+WF6ee9lu76E2vZdd5XjK3p/PQ4fzvSuq7kJzf
jqzX1LRf29CuOEA4PLcgkCDxyQOVqAk5iKiztLil/ZLqTLoJrVYm+ulTG9XHcXkQ
565nXR/mPl5z9WjoB1/eR0k4yO91R56xE+5r9WdFcT9wBPwPWeUqh7uaXSzyTmIw
r6gHHNamx15P5VrW0Zd3dTcYlhrWwKH9ibAFlsSniGJPe7d2WeWpaAEOOOmG4RLH
zvGcF+iRAgMBAAECggEAdXaIghjwsxKMSbxe10f5zM1BFDb1BSmW8CBu1qPkhzW2
QXqpzqA7o1WeQr685sNwZyOoaVnIo8Ue8EJgXS6S37XvaKZJc/PRYIOAaVHQ04Ar
rqluzt5ousWqR3Iuse1mUHNYKbaXonzJ8VcBBjqo43az+bE9tbP7cgqj6Ro9g5QQ
wNlhU3+rVQEL82klSzm/YH10rPEYEPv4H3sMvCqFInJ8L+kdxN6PFToh5LXcXCSP
Yyg7jPqokjSKCNBaIF0R3b5cdD3ahJr1s3nMawdl6fYvZeGTJvYTMv02RQ9mtP1N
iraSw4jA7WSpPLG2A8zrseSWHvMSWQkPYv0yyuat+QKBgQD+nRR8dUBeO1tpy3Nz
gM7OJ5UDyChZ21oIkuRYyZLH7XPHZ5DbqcwMz1bX2SbW8VmCi+V1dF+ospVGPVmW
UhdbUFNhXRRnE9ZV5yIuiXM3zgnQ9KHzaVN+/DsI/+jELUwwGAbSCGPuAXqVw+L0
Fu5IFqdgZHCWDWs+FcpOeHGDRwKBgQDyA5Uulxq6ZrEzkhrTpqtxEiNOTXJEbzR8
pcEF/m09qUsvb1maqKQWd0rOAsyG7e8zyvUz4OodkG7aqG29PSFZmD7ea8GF1E6x
vKU3fsCukpaTS5lEnq2sUOVrFqmgVQ4ovDkaEesIzb5XXVK31YsX4CNCSzlKjnwe
duh+xBixZwKBgE6gF0lvs9bloY8EArzyU+qZkoy+bKeC80Seh+FbLfaLPyuesb8D
qj1ycbDqH/JUSX3k0ZD5xOiFbU9pdpbS9t996KGyarCCEbgpTgbs7yWWfLWINdLC
/cPDBD/9NtYN3u8jHEgTyzgeQMqq2RTjV+XvCPTdT18m+a0McZLV4sfVAoGAObqz
Dk8LGCXA5U1Xyt76DFnIRDhjJoHkYktjtNtREaFdhu4n0KWjppxEIso2IYWGRrOG
NB7VmcHHP69npfl8CBQyAvpvSk4vi2Q1gPxiWAItmuswn1a+lNkjMJ1STyWa4Aqu
EFLv3sS9P7fKMIHm0QYtQvYQr4E3iEjTAtIiFccCgYEAxizMX6jZs6csjHKnbmeM
bQnuoDhBiQWO8APf578pZVOOx5stbTOw5x240zZrAt98hyqHjuG1KWS2z8feNdTa
wQ/BZ47VCSsw58rROSFt4wmP298LTYOy6Du2BPeuQB2gK7ftWi7TeE6lswHSx8qs
1388MkPlPDpjqxeluXXsIbA=
-----END PRIVATE KEY-----"
```

### 5. FIREBASE_CLIENT_EMAIL
```
FIREBASE_CLIENT_EMAIL=firebase-adminsdk-fbsvc@firstapp-ddec4.iam.gserviceaccount.com
```

### 6. FIREBASE_CLIENT_ID
```
FIREBASE_CLIENT_ID=106260802712545963145
```

### 7. FIREBASE_AUTH_URI
```
FIREBASE_AUTH_URI=https://accounts.google.com/o/oauth2/auth
```

### 8. FIREBASE_TOKEN_URI
```
FIREBASE_TOKEN_URI=https://oauth2.googleapis.com/token
```

### 9. FIREBASE_AUTH_PROVIDER_CERT_URL
```
FIREBASE_AUTH_PROVIDER_CERT_URL=https://www.googleapis.com/oauth2/v1/certs
```

### 10. FIREBASE_CLIENT_CERT_URL
```
FIREBASE_CLIENT_CERT_URL=https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40firstapp-ddec4.iam.gserviceaccount.com
```

### 11. FIREBASE_UNIVERSE_DOMAIN
```
FIREBASE_UNIVERSE_DOMAIN=googleapis.com
```

---

## For Render Deployment

### Option 1: Use Secret File (RECOMMENDED)
Add as Secret File in Render Dashboard:
- **File name**: `firebase-service-account.json`
- **Content**: Copy entire JSON from your local file

### Option 2: Use Environment Variables
Add these in Render Dashboard > Environment:

```bash
FIREBASE_TYPE=service_account
FIREBASE_PROJECT_ID=firstapp-ddec4
FIREBASE_PRIVATE_KEY_ID=06249592a103030d5902c5c2cc0d5a2191644893
FIREBASE_PRIVATE_KEY="-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDwtA2Up7uT3oEI\n7Br9B2OIweJUwICNovTa/4cHTlNNvdzORHLkFKNBoYcSJW0dBuzbnK0xiI6GTDFJ\naWyeGK+ze8IxpDigMj80yem413+WF6ee9lu76E2vZdd5XjK3p/PQ4fzvSuq7kJzf\njqzX1LRf29CuOEA4PLcgkCDxyQOVqAk5iKiztLil/ZLqTLoJrVYm+ulTG9XHcXkQ\n565nXR/mPl5z9WjoB1/eR0k4yO91R56xE+5r9WdFcT9wBPwPWeUqh7uaXSzyTmIw\nr6gHHNamx15P5VrW0Zd3dTcYlhrWwKH9ibAFlsSniGJPe7d2WeWpaAEOOOmG4RLH\nzvGcF+iRAgMBAAECggEAdXaIghjwsxKMSbxe10f5zM1BFDb1BSmW8CBu1qPkhzW2\nQXqpzqA7o1WeQr685sNwZyOoaVnIo8Ue8EJgXS6S37XvaKZJc/PRYIOAaVHQ04Ar\nrqluzt5ousWqR3Iuse1mUHNYKbaXonzJ8VcBBjqo43az+bE9tbP7cgqj6Ro9g5QQ\nwNlhU3+rVQEL82klSzm/YH10rPEYEPv4H3sMvCqFInJ8L+kdxN6PFToh5LXcXCSP\nYyg7jPqokjSKCNBaIF0R3b5cdD3ahJr1s3nMawdl6fYvZeGTJvYTMv02RQ9mtP1N\niraSw4jA7WSpPLG2A8zrseSWHvMSWQkPYv0yyuat+QKBgQD+nRR8dUBeO1tpy3Nz\ngM7OJ5UDyChZ21oIkuRYyZLH7XPHZ5DbqcwMz1bX2SbW8VmCi+V1dF+ospVGPVmW\nUhdbUFNhXRRnE9ZV5yIuiXM3zgnQ9KHzaVN+/DsI/+jELUwwGAbSCGPuAXqVw+L0\nFu5IFqdgZHCWDWs+FcpOeHGDRwKBgQDyA5Uulxq6ZrEzkhrTpqtxEiNOTXJEbzR8\npcEF/m09qUsvb1maqKQWd0rOAsyG7e8zyvUz4OodkG7aqG29PSFZmD7ea8GF1E6x\nvKU3fsCukpaTS5lEnq2sUOVrFqmgVQ4ovDkaEesIzb5XXVK31YsX4CNCSzlKjnwe\nduh+xBixZwKBgE6gF0lvs9bloY8EArzyU+qZkoy+bKeC80Seh+FbLfaLPyuesb8D\nqj1ycbDqH/JUSX3k0ZD5xOiFbU9pdpbS9t996KGyarCCEbgpTgbs7yWWfLWINdLC\n/cPDBD/9NtYN3u8jHEgTyzgeQMqq2RTjV+XvCPTdT18m+a0McZLV4sfVAoGAObqz\nDk8LGCXA5U1Xyt76DFnIRDhjJoHkYktjtNtREaFdhu4n0KWjppxEIso2IYWGRrOG\nNB7VmcHHP69npfl8CBQyAvpvSk4vi2Q1gPxiWAItmuswn1a+lNkjMJ1STyWa4Aqu\nEFLv3sS9P7fKMIHm0QYtQvYQr4E3iEjTAtIiFccCgYEAxizMX6jZs6csjHKnbmeM\nbQnuoDhBiQWO8APf578pZVOOx5stbTOw5x240zZrAt98hyqHjuG1KWS2z8feNdTa\nwQ/BZ47VCSsw58rROSFt4wmP298LTYOy6Du2BPeuQB2gK7ftWi7TeE6lswHSx8qs\n1388MkPlPDpjqxeluXXsIbA=\n-----END PRIVATE KEY-----\n"
FIREBASE_CLIENT_EMAIL=firebase-adminsdk-fbsvc@firstapp-ddec4.iam.gserviceaccount.com
FIREBASE_CLIENT_ID=106260802712545963145
FIREBASE_AUTH_URI=https://accounts.google.com/o/oauth2/auth
FIREBASE_TOKEN_URI=https://oauth2.googleapis.com/token
FIREBASE_AUTH_PROVIDER_CERT_URL=https://www.googleapis.com/oauth2/v1/certs
FIREBASE_CLIENT_CERT_URL=https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40firstapp-ddec4.iam.gserviceaccount.com
FIREBASE_UNIVERSE_DOMAIN=googleapis.com
```

---

## Important Notes

1. **Private Key Format**: When using as environment variable, keep the `\n` characters for line breaks
2. **Quotes**: Wrap the private key in quotes when setting as environment variable
3. **Security**: Never commit these values to git
4. **Recommended**: Use Secret File method on Render instead of individual environment variables

## Quick Copy for Render (One-line format)

For the private key in Render, use this format:
```
-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDwtA2Up7uT3oEI\n7Br9B2OIweJUwICNovTa/4cHTlNNvdzORHLkFKNBoYcSJW0dBuzbnK0xiI6GTDFJ\naWyeGK+ze8IxpDigMj80yem413+WF6ee9lu76E2vZdd5XjK3p/PQ4fzvSuq7kJzf\njqzX1LRf29CuOEA4PLcgkCDxyQOVqAk5iKiztLil/ZLqTLoJrVYm+ulTG9XHcXkQ\n565nXR/mPl5z9WjoB1/eR0k4yO91R56xE+5r9WdFcT9wBPwPWeUqh7uaXSzyTmIw\nr6gHHNamx15P5VrW0Zd3dTcYlhrWwKH9ibAFlsSniGJPe7d2WeWpaAEOOOmG4RLH\nzvGcF+iRAgMBAAECggEAdXaIghjwsxKMSbxe10f5zM1BFDb1BSmW8CBu1qPkhzW2\nQXqpzqA7o1WeQr685sNwZyOoaVnIo8Ue8EJgXS6S37XvaKZJc/PRYIOAaVHQ04Ar\nrqluzt5ousWqR3Iuse1mUHNYKbaXonzJ8VcBBjqo43az+bE9tbP7cgqj6Ro9g5QQ\nwNlhU3+rVQEL82klSzm/YH10rPEYEPv4H3sMvCqFInJ8L+kdxN6PFToh5LXcXCSP\nYyg7jPqokjSKCNBaIF0R3b5cdD3ahJr1s3nMawdl6fYvZeGTJvYTMv02RQ9mtP1N\niraSw4jA7WSpPLG2A8zrseSWHvMSWQkPYv0yyuat+QKBgQD+nRR8dUBeO1tpy3Nz\ngM7OJ5UDyChZ21oIkuRYyZLH7XPHZ5DbqcwMz1bX2SbW8VmCi+V1dF+ospVGPVmW\nUhdbUFNhXRRnE9ZV5yIuiXM3zgnQ9KHzaVN+/DsI/+jELUwwGAbSCGPuAXqVw+L0\nFu5IFqdgZHCWDWs+FcpOeHGDRwKBgQDyA5Uulxq6ZrEzkhrTpqtxEiNOTXJEbzR8\npcEF/m09qUsvb1maqKQWd0rOAsyG7e8zyvUz4OodkG7aqG29PSFZmD7ea8GF1E6x\nvKU3fsCukpaTS5lEnq2sUOVrFqmgVQ4ovDkaEesIzb5XXVK31YsX4CNCSzlKjnwe\nduh+xBixZwKBgE6gF0lvs9bloY8EArzyU+qZkoy+bKeC80Seh+FbLfaLPyuesb8D\nqj1ycbDqH/JUSX3k0ZD5xOiFbU9pdpbS9t996KGyarCCEbgpTgbs7yWWfLWINdLC\n/cPDBD/9NtYN3u8jHEgTyzgeQMqq2RTjV+XvCPTdT18m+a0McZLV4sfVAoGAObqz\nDk8LGCXA5U1Xyt76DFnIRDhjJoHkYktjtNtREaFdhu4n0KWjppxEIso2IYWGRrOG\nNB7VmcHHP69npfl8CBQyAvpvSk4vi2Q1gPxiWAItmuswn1a+lNkjMJ1STyWa4Aqu\nEFLv3sS9P7fKMIHm0QYtQvYQr4E3iEjTAtIiFccCgYEAxizMX6jZs6csjHKnbmeM\nbQnuoDhBiQWO8APf578pZVOOx5stbTOw5x240zZrAt98hyqHjuG1KWS2z8feNdTa\nwQ/BZ47VCSsw58rROSFt4wmP298LTYOy6Du2BPeuQB2gK7ftWi7TeE6lswHSx8qs\n1388MkPlPDpjqxeluXXsIbA=\n-----END PRIVATE KEY-----
```