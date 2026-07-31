#!/usr/bin/env pwsh
# Installs the VS Code extensions and user config from this folder.
# Usage:  ./install.ps1            (install extensions + copy config)
#         ./install.ps1 -Prune     (also uninstall anything not in extensions.txt)

param([switch]$Prune)

$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path

if (-not (Get-Command code -ErrorAction SilentlyContinue)) {
    throw "'code' not on PATH. Install VS Code and enable the shell command."
}

$userDir = if ($IsMacOS)      { "$HOME/Library/Application Support/Code/User" }
           elseif ($IsLinux)  { "$HOME/.config/Code/User" }
           else               { "$env:APPDATA\Code\User" }

# --- extensions ---------------------------------------------------------
$wanted = Get-Content "$here/extensions.txt" |
    ForEach-Object { $_.Trim() } |
    Where-Object { $_ -and -not $_.StartsWith('#') }

$installed = @(code --list-extensions)

foreach ($ext in $wanted) {
    if ($installed -contains $ext) {
        Write-Host "= $ext" -ForegroundColor DarkGray
    } else {
        Write-Host "+ $ext" -ForegroundColor Green
        code --install-extension $ext | Out-Null
    }
}

if ($Prune) {
    foreach ($ext in $installed) {
        if ($wanted -notcontains $ext) {
            Write-Host "- $ext" -ForegroundColor Yellow
            code --uninstall-extension $ext | Out-Null
        }
    }
}

# --- config -------------------------------------------------------------
if (-not (Test-Path $userDir)) { New-Item -ItemType Directory -Force -Path $userDir | Out-Null }

$stamp = Get-Date -Format 'yyyyMMdd-HHmmss'
foreach ($f in 'settings.json', 'keybindings.json') {
    $dest = Join-Path $userDir $f
    if (Test-Path $dest) {
        Copy-Item $dest "$dest.bak-$stamp"
        Write-Host "backed up $f -> $f.bak-$stamp" -ForegroundColor DarkGray
    }
    Copy-Item (Join-Path $here $f) $dest -Force
    Write-Host "installed $f" -ForegroundColor Green
}

Write-Host "`nDone. Reload VS Code to pick up the new config." -ForegroundColor Cyan
