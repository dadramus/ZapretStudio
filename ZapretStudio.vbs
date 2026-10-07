' Zapret Studio - tihiy zapusk (bez okna PowerShell). Zapuskayte etot fayl ili ZapretStudio.bat
Set fso = CreateObject("Scripting.FileSystemObject")
dir = fso.GetParentFolderName(WScript.ScriptFullName)
Set sh = CreateObject("Shell.Application")
sh.ShellExecute "powershell.exe", "-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -STA -File """ & dir & "\ZapretStudio.ps1""", dir, "runas", 0
