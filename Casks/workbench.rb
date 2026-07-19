cask "workbench" do
  version "2026.7.1"
  sha256 "a4018a357d3e6abf7634e7817fd34c982808bde7137b6b02d6dac8da735435d8"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.7.1/macos/arm64/dmg/Workbench_2026.7.1_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
