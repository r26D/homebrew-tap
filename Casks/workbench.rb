cask "workbench" do
  version "2026.11.4"
  sha256 "8a79b9f4ba1a3003c7f05e487903131fdf8629cea51fe388d166d269a4398cb5"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.11.4/macos/arm64/dmg/Workbench_2026.11.4_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
