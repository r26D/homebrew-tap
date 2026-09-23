cask "workbench" do
  version "2026.9.5"
  sha256 "51e6b15f27cd606a650bb36f75d3c8f73e5d3c7b09ac4e17b8eb39faa6cf66fb"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.9.5/macos/arm64/dmg/Workbench_2026.9.5_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
