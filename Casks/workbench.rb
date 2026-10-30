cask "workbench" do
  version "2026.10.10"
  sha256 "870eeee4d4f60f2f13d8f65e80901b3edd010fbf2f2004fb890db2a8ea65c617"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.10.10/macos/arm64/dmg/Workbench_2026.10.9_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
