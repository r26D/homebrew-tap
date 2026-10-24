cask "workbench" do
  version "2026.10.6"
  sha256 "fb309b4d70702a8705044989f845d341a9c632fd6b6b610adf702ae7996106ed"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.10.6/macos/arm64/dmg/Workbench_2026.10.6_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
