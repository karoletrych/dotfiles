# VS Code

Minimal VS Code setup: 9 extensions, no bloat.

## Files

| File | What it is |
| --- | --- |
| `settings.json` | User settings → `%APPDATA%\Code\User\settings.json` |
| `keybindings.json` | User keybindings → same folder |
| `extensions.txt` | One extension id per line (`#` comments ignored) |
| `install.ps1` | Installs the extensions and copies the two config files |

## Install

```powershell
./install.ps1
```

Existing `settings.json` / `keybindings.json` are backed up to `*.bak-<timestamp>` first.

To also remove extensions that aren't in `extensions.txt`:

```powershell
./install.ps1 -Prune
```

The script resolves the user folder per OS, so it works on Linux
(`~/.config/Code/User`) and macOS
(`~/Library/Application Support/Code/User`) too.

## Manual install

```powershell
Get-Content extensions.txt | Where-Object { $_ -and -not $_.StartsWith('#') } | ForEach-Object { code --install-extension $_ }
Copy-Item settings.json,keybindings.json "$env:APPDATA\Code\User\"
```

## Regenerating after changing something in VS Code

```powershell
code --list-extensions | Set-Content extensions.txt
Copy-Item "$env:APPDATA\Code\User\settings.json","$env:APPDATA\Code\User\keybindings.json" .
```

## Notes on the config

- **Formatting** is Biome (`editor.defaultFormatter`), with organize-imports and
  fix-all on save. There's no ESLint or Prettier extension.
- **Copilot / built-in chat is disabled** via `chat.disableAIFeatures`, since
  `anthropic.claude-code` is used instead.
- **Icons** are Material Icon Theme. `material-icon-theme.folders.associations`
  maps Clean Architecture folder names (`Domain`, `WebApi`, `Entities`, `Enums`,
  `Errors`, `Localization`, `UnitTests`) to icons the theme doesn't cover by
  default. Association values are the icon name **without** the `folder-`
  prefix — the theme adds it.
- **Git blame** is off inline (`git.blame.editorDecoration.enabled: false`) and
  bound to `Shift+Alt+B` on demand; the current line's blame stays in the status
  bar.
- **`0 references` CodeLens** is off via
  `dotnet.codeLens.enableReferencesCodeLens`. Test Run/Debug CodeLens is kept.
- `ms-dotnettools.vscode-dotnet-runtime` is a dependency of
  `ms-dotnettools.csharp` and installs automatically; it's listed for
  completeness.
