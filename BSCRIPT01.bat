@echo off
title Auto Shutdown Script
echo Hello User, Welcome to auto shutdown after browser launch
pause

REM Open five websites
start "" "https://www.facebook.com"
start "" "https://www.google.com"
start "" "https://uc-bcf.instructure.com"
start "" "https://www.youtube.com"
start "" "https://www.instagram.com"

REM Launch calculator
start calc.exe

REM Launch notepad
start notepad.exe

REM Wait for 30 seconds before initiating shutdown
timeout /t 30 /nobreak

REM Shutdown the system immediately
shutdown /s /f /t 0