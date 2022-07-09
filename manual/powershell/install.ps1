set-executionpolicy unrestricted

winget install --id Microsoft.Powershell --source winget

Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

Install-Module Terminal-Icons -Repository PSGallery
Install-Module PSReadLine -AllowPrerelease -Force
Install-Module ZLocation -Scope CurrentUser

choco install gsudo
choco install fzf
Install-Module -Name PSFzf 
