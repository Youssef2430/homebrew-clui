# Homebrew Tap for GLUI

GLUI (Glue UI) brings Claude Code, Codex, and OpenCode into one macOS workspace.

## Install

```sh
brew tap Youssef2430/glui
brew install --cask glui
```

## Update

```sh
brew upgrade --cask glui
```

Apple Silicon receives GLUI v0.2.0 and later. Intel support is deprecated; Clui v0.1.17 remains the final Intel version.

The legacy `clui` cask remains available and follows the same architecture policy. Existing installations can continue using `brew upgrade --cask clui`. To switch tokens, run `brew uninstall --cask clui` (without `--zap`), then `brew install --cask Youssef2430/glui/glui`; your preferences are preserved.

[GLUI repository and releases](https://github.com/Youssef2430/glui)
