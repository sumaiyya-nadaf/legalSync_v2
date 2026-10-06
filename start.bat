@echo off
echo ===================================================
echo             Starting LegalSync System
echo ===================================================
echo.

cd /d "%~dp0"

if not exist "backend\venv\Scripts\python.exe" (
    echo [ERROR] Virtual environment not found at backend\venv!
    echo Please make sure the virtual environment is set up.
    pause
    exit /b 1
)

echo [1/3] Ensuring database and demo seed data are initialized...
backend\venv\Scripts\python backend\seed.py

echo.
echo [2/3] Launching LegalSync API and Web App on http://localhost:8000 ...
echo App will be available at: http://localhost:8000
echo Demo Login: advocate.sharma@legalsync.in
echo Password:   Password@123
echo.
echo [3/3] Opening browser...
start http://localhost:8000

echo.
echo ===================================================
echo Press Ctrl+C in this window to stop the server.
echo ===================================================
backend\venv\Scripts\python -m uvicorn main:app --app-dir backend --reload --host 127.0.0.1 --port 8000
