<!-- pigeon:begin -->
# r26D/homebrew-tap

## Install

```sh
brew tap r26D/tap
```

## Available Packages

| Name | Type | Version | Description | Install |
| ---- | ---- | ------- | ----------- | ------- |
| workbench | cask | 2026.7.1 | Desktop harness for AI driven software development | `brew install --cask r26D/tap/workbench` |

## Updates

Casks in this tap are bumped automatically by the source project's release workflow after each tagged release. The workbench cask declares `auto_updates true`, so the app's built-in Tauri updater handles in-place upgrades — `brew upgrade` only refreshes the cask version pointer.
<!-- pigeon:end -->

# License
Each cask references upstream artifacts under their respective licenses. The tap files themselves are released under the BSD 2-Clause License (matching Homebrew/homebrew-cask).
