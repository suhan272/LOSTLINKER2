@echo off
echo Starting LostLinker Website
echo =========================
echo.
echo 1. Starting Backend Server...
cd /d "c:\Users\Hp\Documents\suhan\web dev\backend"
start "Backend Server" cmd /c "node server.js"
timeout /t 3 /nobreak >nul
echo.
echo 2. Opening Frontend...
timeout /t 2 /nobreak >nul
start "" "c:\Users\Hp\Documents\suhan\web dev\frontend\lost.html"
echo.
echo Website should now be running!
echo Frontend: c:\Users\Hp\Documents\suhan\web dev\frontend\lost.html
echo Backend API: http://localhost:3000
echo MongoDB: Already running
echo.
echo Press any key to exit...
pause >nul