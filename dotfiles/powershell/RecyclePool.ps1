function Recycle-IISAppPool([string]$Filter) {
   Import-Module IISAdministration
   Import-Module WebAdministration -WarningAction SilentlyContinue
   $pools = Get-IISAppPool | ? { $_.Name -like $Filter }
   if(!$pools -or !$pools.Length) {
      Write-Host "No matching pools found"
      return;
   }
   $pools | % { Restart-WebAppPool $_.Name }
}
