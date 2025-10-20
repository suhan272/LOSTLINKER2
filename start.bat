@echo off
TITLE LostLinker - Starting Services

REM Start MongoDB if not already running
echo Checking if MongoDB is running...
net start | findstr /i "mongodb" >nul
if errorlevel 1 (
    echo Starting MongoDB...
    net start MongoDB
) else (
    echo MongoDB is already running.
)

echo.
echo Starting LostLinker Backend Server...
cd /d "c:\Users\Hp\Documents\suhan\web dev\backend"
start /b cmd /c "node server.js ^> server.log 2^>^&1"
echo Backend server started in background.

echo Opening LostLinker frontend in browser...
start "" "c:\Users\Hp\Documents\suhan\web dev\frontend\lost.html"

echo.
echo LostLinker services started successfully!
echo Backend logs are being written to backend\server.log
pause