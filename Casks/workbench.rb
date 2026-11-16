cask "workbench" do
  version "2026.11.6"
  sha256 "6409337738a7769fc3767379124b03923f28b29c0c1019fed735c5e2e46b68ea"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.11.6/macos/arm64/dmg/Workbench_2026.11.6_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
