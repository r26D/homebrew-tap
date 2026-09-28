cask "workbench" do
  version "2026.9.9"
  sha256 "14aa0ab54ec700af0760e61beaa07ec714a96bb591ea4cb4ef99e2693710c734"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.9.9/macos/arm64/dmg/Workbench_2026.9.8_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
