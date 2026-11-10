cask "workbench" do
  version "2026.11.5"
  sha256 "974879bccb563321ac4de5e11c703ced22a9d967c4b9b28577f0dedeed0dec98"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.11.5/macos/arm64/dmg/Workbench_2026.11.5_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
