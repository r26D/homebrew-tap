cask "workbench" do
  version "2026.6.9"
  sha256 "9fb0d9b74f792e0510bf4b1f0e53f5304d22ed64529242033f5b18c02f9d642a"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.6.9/macos/arm64/dmg/Workbench_2026.6.9_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
