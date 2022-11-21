# open all matching in vscode
rg -l RPP2_DEV |% {code -r "$($pwd)\$_"}
