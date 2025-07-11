@echo off
setlocal

echo.
echo ================================
echo Installing Python Libraries
echo ================================

:: Optional: ensure pip is available
echo Ensuring pip is installed...
python -m ensurepip --upgrade

:: Upgrade pip
echo Upgrading pip...
python -m pip install --upgrade pip

:: Install required packages
echo Installing packages...
python -m pip install ^
    opencv-python ^
    opencv-python-headless ^
    colour-science ^
    colour ^
    scikit-image ^
    matplotlib ^
    numpy ^
    PyQt5

echo.
echo ================================
echo Python library installation complete!
echo ================================
pause
