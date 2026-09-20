cask "workbench" do
  version "2026.9.4"
  sha256 "ac4549e69976e8aa367376422137ba93e527d7392bc06f55e829864e5b416f09"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.9.4/macos/arm64/dmg/Workbench_2026.9.4_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
