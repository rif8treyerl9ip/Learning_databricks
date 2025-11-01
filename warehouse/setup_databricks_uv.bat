@echo off

echo Starting environment setup...
echo.

call :setup_venv .venv-dev dev
call :setup_venv .venv-ci ci

echo.
echo All environments setup complete!
pause
exit /b 0

:setup_venv
echo.
echo ========================================
echo Setting up %1 environment...
echo ========================================

if not exist "%~1" (
    echo Creating virtual environment: %~1
    py -3.11 -m venv %~1
)

call %~1\Scripts\activate.bat
pip3 install -e ".[%~2]"
pip3 list | findstr databricks
call deactivate

echo %~1 setup complete!
exit /b
