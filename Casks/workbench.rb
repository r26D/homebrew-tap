cask "workbench" do
  version "2026.8.16"
  sha256 "fa7f3d88afed967e15a8841ef029f893b06537b18f8f2c88690e6fc638e4af7e"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.8.16/macos/arm64/dmg/Workbench_2026.8.15_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
