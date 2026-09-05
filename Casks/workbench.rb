cask "workbench" do
  version "2026.9.2"
  sha256 "0a01bf7e277a62c32583c1a80274459598a40b18a6fba109ccb9da1a7ce3cb99"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.9.2/macos/arm64/dmg/Workbench_2026.9.2_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
