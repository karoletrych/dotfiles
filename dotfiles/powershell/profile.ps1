Import-Module Terminal-Icons

Import-Module PSFzf
Set-PsFzfOption -EnableAliasFuzzyEdit -EnableAliasFuzzySetLocation

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows


. c:\dev\dotfiles\powershell\gitAliases.ps1
oh-my-posh --init --shell pwsh --config c:\dev\dotfiles\powershell\ohmyposh.json | Invoke-Expression


Import-Module ZLocation

Import-Module posh-git
