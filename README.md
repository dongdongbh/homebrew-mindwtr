# Mindwtr Packages

This repo hosts package manager definitions for Mindwtr.

## Structure

- `Casks/mindwtr.rb` - Homebrew Cask (macOS)
- `bucket/mindwtr.json` - Scoop manifest (Windows)

## Install

### Homebrew (macOS)
Homebrew cask moved to official homebrew/cask repository, you can install it directly:
```bash
brew install --cask mindwtr
```

### Scoop (Windows)

```powershell
scoop bucket add mindwtr https://github.com/dongdongbh/homebrew-mindwtr
scoop install mindwtr
```

