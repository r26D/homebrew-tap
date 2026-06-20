cask "workbench" do
  version "2026.6.8"
  sha256 "dcb2a33819afa649a21ea0b2ac12892f6141566eaf49976503f35e9e879f7d6e"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.6.8/macos/arm64/dmg/Workbench_2026.6.8_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
