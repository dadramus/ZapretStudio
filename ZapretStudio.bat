@echo off
rem Zapret Studio - launcher.
rem Layout 1: ZapretStudio.bat + core\ZapretStudio.vbs  (all-in-one archive)
rem Layout 2: everything in the zapret folder (bin\, lists\, general*.bat) next to this file
setlocal
set "D=%~dp0"
if exist "%D%core\ZapretStudio.vbs" (
  start "" wscript.exe //nologo "%D%core\ZapretStudio.vbs"
  exit /b
)
if exist "%D%ZapretStudio.vbs" (
  start "" wscript.exe //nologo "%D%ZapretStudio.vbs"
  exit /b
)
if exist "%D%core\ZapretStudio.ps1" (
  start "" powershell.exe -NoProfile -ExecutionPolicy Bypass -STA -WindowStyle Hidden -File "%D%core\ZapretStudio.ps1"
  exit /b
)
start "" powershell.exe -NoProfile -ExecutionPolicy Bypass -STA -WindowStyle Hidden -File "%D%ZapretStudio.ps1"
