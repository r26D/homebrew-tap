cask "workbench" do
  version "2026.9.1"
  sha256 "cf78d8475fe857f17a8ec743bd33a94ced373246af5678ae12ec96c0dae38355"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.9.1/macos/arm64/dmg/Workbench_2026.9.1_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
