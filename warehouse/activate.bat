@echo off

echo Starting environment setup...
echo.

if "%~1"=="dev" (
    call .venv-dev\Scripts\activate.bat
) else if "%~1"=="ci" (
    call .venv-ci\Scripts\activate.bat
) else (
    echo Unknown environment "%~1". Please specify "dev" or "ci".
    exit /b 1
)
