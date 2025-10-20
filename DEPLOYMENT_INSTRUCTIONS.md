# LostLinker Deployment Instructions

## 🚀 Deployment Plan

Based on your deployment strategy, here's how to deploy your LostLinker application:

### 1. Frontend Deployment (Vercel/Netlify)

#### Option A: Deploy to Vercel
1. Push frontend to GitHub
2. Connect GitHub repo to Vercel
3. Set root directory to `frontend/`
4. Vercel will automatically detect and deploy

#### Option B: Deploy to Netlify
1. Push frontend to GitHub
2. Connect GitHub repo to Netlify
3. Set publish directory to `frontend/`
4. Netlify will automatically deploy

### 2. Backend Deployment (Vercel/Render/Railway)

#### Option A: Deploy to Render
1. Push backend to GitHub
2. Connect GitHub repo to Render
3. Set root directory to `backend/`
4. Set build command: `npm install`
5. Set start command: `node server.js`
6. Add environment variables in Render dashboard:
   - `MONGO_URI`: Your MongoDB connection string
   - `JWT_SECRET`: Your JWT secret key

#### Option B: Deploy to Railway
1. Push backend to GitHub
2. Connect GitHub repo to Railway
3. Railway will auto-detect Node.js project
4. Set environment variables in Railway dashboard

### 3. Database Setup (MongoDB Atlas)

1. Create free MongoDB Atlas cluster
2. Get connection string from Atlas dashboard
3. Add connection string as `MONGO_URI` environment variable

## 🛠️ Step-by-Step Deployment

### Step 1: Prepare GitHub Repository

1. Ensure all files are committed:
   ```bash
   git add .
   git commit -m "Prepare for deployment"
   ```

2. Push to GitHub:
   ```bash
   git push origin main
   ```

### Step 2: Frontend Deployment

#### Vercel Deployment:
1. Go to [vercel.com](https://vercel.com)
2. Sign in and create new project
3. Import your GitHub repository
4. Set configuration:
   - Framework: Other
   - Root Directory: frontend
   - Build Command: (leave empty for static site)
   - Output Directory: (leave empty)
5. Deploy!

#### Netlify Deployment:
1. Go to [netlify.com](https://netlify.com)
2. Sign in and create new site
3. Import your GitHub repository
4. Set configuration:
   - Base directory: frontend
   - Publish directory: . (current directory)
5. Deploy!

### Step 3: Backend Deployment

#### Render Deployment:
1. Go to [render.com](https://render.com)
2. Sign in and create new Web Service
3. Connect your GitHub repository
4. Set configuration:
   - Name: lostlinker-backend
   - Root Directory: backend
   - Build Command: npm install
   - Start Command: node server.js
5. Add environment variables:
   - MONGO_URI: your_mongodb_connection_string
   - JWT_SECRET: your_jwt_secret_key
6. Deploy!

#### Railway Deployment:
1. Go to [railway.app](https://railway.app)
2. Sign in and create new project
3. Connect your GitHub repository
4. Railway will auto-detect Node.js
5. Add environment variables in Variables tab
6. Deploy!

### Step 4: Database Setup

#### MongoDB Atlas:
1. Go to [mongodb.com/cloud/atlas](https://mongodb.com/cloud/atlas)
2. Create free M0 cluster
3. Create database user
4. Add IP whitelist (0.0.0.0/0 for testing)
5. Get connection string:
   - Click "Connect"
   - Choose "Connect your application"
   - Copy the connection string
6. Replace `<password>` with your actual password

### Step 5: Update Frontend API URL

After deploying your backend, update the API URL in your frontend:

1. Edit `frontend/lost.html`
2. Replace `'https://your-backend-url.com/api'` with your actual backend URL
3. Commit and push the change
4. Redeploy frontend

## 🔧 Environment Variables

### Backend Environment Variables:
- `MONGO_URI`: MongoDB connection string
- `JWT_SECRET`: Secret key for JWT tokens
- `PORT`: Server port (optional, defaults to 3000)

### Example .env file:
```env
MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/LostLinkerDB
JWT_SECRET=your_very_strong_secret_key_here
PORT=3000
```

## ✅ After Deployment

Once deployed:

1. Frontend fetches data dynamically from backend ✅
2. Backend stores/fetches data from database ✅
3. Entire LostLinker site becomes fully dynamic ✅

## 🔍 Troubleshooting

### Common Issues:

1. **CORS Errors**:
   - Ensure your backend CORS configuration allows your frontend domain
   - Update the allowedOrigins array in server.js

2. **Database Connection Issues**:
   - Verify MONGO_URI is correct
   - Check MongoDB Atlas IP whitelist
   - Ensure database user credentials are correct

3. **Environment Variables Not Set**:
   - Double-check all required environment variables are set in your deployment dashboard

4. **API Endpoints Not Working**:
   - Test backend API directly using tools like Postman
   - Check server logs in deployment dashboard

## 📝 Final Notes

- Your application is already fully functional locally
- The deployment process simply moves it to cloud hosting
- All dynamic features will work exactly the same after deployment
- Make sure to use strong, unique values for JWT_SECRET in production

Happy deploying! 🎉