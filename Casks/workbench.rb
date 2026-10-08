cask "workbench" do
  version "2026.10.2"
  sha256 "0cb9ffe63a81c751e87e580e431a6c5ffe44f5a004b4ba3475c9a2ff9d494e54"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.10.2/macos/arm64/dmg/Workbench_2026.10.1_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
