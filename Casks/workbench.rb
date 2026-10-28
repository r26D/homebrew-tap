cask "workbench" do
  version "2026.10.8"
  sha256 "7a58a0d4035952150a8d6f87b7f2910c0d356c6810485c6fa323d2047bb640f6"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.10.8/macos/arm64/dmg/Workbench_2026.10.8_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
