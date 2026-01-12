# Mindwtr Packages

This repo hosts package manager definitions for Mindwtr.

## Structure

- `Casks/mindwtr.rb` - Homebrew Cask (macOS)
- `bucket/mindwtr.json` - Scoop manifest (Windows)

## Install

### Homebrew (macOS)

```bash
brew tap dongdongbh/mindwtr
brew install --cask mindwtr
```

### Scoop (Windows)

```powershell
scoop bucket add mindwtr https://github.com/dongdongbh/homebrew-mindwtr
scoop install mindwtr
```

## Updating

1. Update the version and SHA256 values in:
   - `Casks/mindwtr.rb`
   - `bucket/mindwtr.json`
2. Commit and push.

### SHA256 helpers

macOS:

```bash
shasum -a 256 /path/to/Mindwtr_0.5.2_x64.dmg
```

Linux:

```bash
sha256sum /path/to/Mindwtr_0.5.2_x64.dmg
```

Windows (PowerShell):

```powershell
Get-FileHash -Algorithm SHA256 .\Mindwtr_0.5.2_x64-setup.exe
```
