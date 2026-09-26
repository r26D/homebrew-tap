cask "workbench" do
  version "2026.9.7"
  sha256 "6d395faf359126104be355d5658d503ce71cd825c10a899ed80b307bdcce6cd3"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.9.7/macos/arm64/dmg/Workbench_2026.9.7_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
