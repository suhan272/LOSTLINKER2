@echo off
echo LostLinker Development Environment Setup
echo ======================================
echo.

echo 1. Checking if MongoDB is running...
tasklist | findstr mongod >nul
if %errorlevel% == 0 (
    echo    ✓ MongoDB is already running
) else (
    echo    i Starting MongoDB...
    start "MongoDB" cmd /c "mongod --dbpath C:\data\db"
    timeout /t 3 /nobreak >nul
    echo    ✓ MongoDB started
)

echo.
echo 2. Starting Backend Server...
cd /d "c:\Users\Hp\Documents\suhan\web dev\backend"
start "Backend Server" cmd /c "node server.js"
timeout /t 3 /nobreak >nul
echo    ✓ Backend server started

echo.
echo 3. Opening Test Connection Page...
timeout /t 2 /nobreak >nul
start "" "c:\Users\Hp\Documents\suhan\web dev\test_connection.html"

echo.
echo 4. Opening Main Application...
start "" "c:\Users\Hp\Documents\suhan\web dev\frontend\lost.html"

echo.
echo Development environment is ready!
echo =================================
echo Backend API: http://localhost:3000
echo Test Page: http://127.0.0.1:5509/test_connection.html
echo Main App: http://127.0.0.1:5509/frontend/lost.html
echo.
echo Note: If using VS Code Live Server, make sure it's running on port 5509
echo.
pause