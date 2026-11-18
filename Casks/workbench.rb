cask "workbench" do
  version "2026.11.7"
  sha256 "b5521898afbe8ee2379db8359251a98fd5340ae9f5ab89ec17eaf374e8b101cf"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.11.7/macos/arm64/dmg/Workbench_2026.11.7_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
