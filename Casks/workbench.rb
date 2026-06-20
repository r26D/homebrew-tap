cask "workbench" do
  version "2026.6.7"
  sha256 "ec3337f6878e9d8d16e15bf3c6e00461d98a0c8a5d13fe141289cf14d5e0e63a"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.6.7/macos/arm64/dmg/Workbench_2026.6.7_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
