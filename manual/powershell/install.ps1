set-executionpolicy unrestricted

winget install --id Microsoft.Powershell --source winget

winget install JanDeDobbeleer.OhMyPosh

Install-Module Terminal-Icons -Repository PSGallery
Install-Module PSReadLine -AllowPrerelease -Force
Install-Module ZLocation -Scope CurrentUser

choco install gsudo
choco install fzf
Install-Module -Name PSFzf 
