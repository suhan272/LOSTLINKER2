@echo off
echo LostLinker Deployment Helper
echo ===========================
echo.

echo 1. Checking Git status...
git status
echo.

echo 2. Adding all files to Git...
git add .
echo.

echo 3. Committing changes...
git commit -m "Prepare for deployment"
echo.

echo 4. Pushing to GitHub...
git push origin main
echo.

echo 5. Deployment Instructions:
echo    ======================
echo    Frontend Deployment:
echo      1. Go to Vercel or Netlify
echo      2. Connect your GitHub repository
echo      3. Set root directory to 'frontend/'
echo      4. Deploy!
echo.
echo    Backend Deployment:
echo      1. Go to Render or Railway
echo      2. Connect your GitHub repository
echo      3. Set root directory to 'backend/'
echo      4. Set build command to 'npm install'
echo      5. Set start command to 'node server.js'
echo      6. Add environment variables:
echo         - MONGO_URI: your MongoDB connection string
echo         - JWT_SECRET: your JWT secret key
echo.
echo    Database Setup:
echo      1. Create MongoDB Atlas cluster
echo      2. Get connection string
echo      3. Add as MONGO_URI environment variable
echo.
echo    After deployment:
echo      1. Update frontend API URL in lost.html
echo      2. Redeploy frontend
echo.
echo Deployment preparation complete!
echo Follow the instructions above to deploy to hosting platforms.
pause