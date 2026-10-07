@echo off
cd /d "%~dp0"
if not exist "%~dp0ZapretStudio.vbs" goto direct
start "" wscript.exe //nologo "%~dp0ZapretStudio.vbs"
exit /b
:direct
start "" powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -STA -File "%~dp0ZapretStudio.ps1"
