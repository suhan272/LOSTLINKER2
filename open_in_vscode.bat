@echo off
echo Opening project in VS Code...
"%LOCALAPPDATA%\Programs\Microsoft VS Code\Code.exe" "c:\Users\Hp\Documents\suhan\web dev"
if %errorlevel% neq 0 (
    echo Failed to open VS Code. Please make sure it's installed correctly.
    echo You can also try manually opening VS Code and then selecting:
    echo File ^> Open Folder ^> "c:\Users\Hp\Documents\suhan\web dev"
    pause
)