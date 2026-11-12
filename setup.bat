```bat
@echo off
setlocal

echo ======================================================
echo English Pronunciation App - Installation Started...
echo ======================================================

:: 1. Create Virtual Environment
if not exist "venv" (
    echo Virtual environment not found. Creating a new venv...
    python -m venv venv
    if %ERRORLEVEL% neq 0 (
        echo [ERROR] Could not create virtual environment. Make sure Python is installed.
        pause
        exit /b
    )
) else (
    echo Existing virtual environment (venv) found. Continuing...
)

:: 2. Activate Virtual Environment
echo Activating virtual environment...
call venv\Scripts\activate

:: 3. Install Packages
echo.
echo Updating pip...
python -m pip install --upgrade pip

echo.
echo IMPORTANT: This app requires FFMPEG to be installed and in your system PATH.
echo.

echo [1/3] Installing PyTorch (CPU version)...
python -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

echo [2/3] Installing NumPy (v1.x) for compatibility...
python -m pip install "numpy<2"

echo [3/3] Installing other required packages...
if exist requirements.txt (
    python -m pip install -r requirements.txt
) else (
    echo [WARNING] requirements.txt not found. Skipping this step.
)

echo.
echo ======================================================
echo Installation Completed Successfully!
echo You can launch the application using "run_app.bat".
echo ======================================================
pause
```
