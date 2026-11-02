cask "workbench" do
  version "2026.11.2"
  sha256 "27e75c0df47b61b15df7468536629344adc72d1f33dc754cad4728b9f19d4d00"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.11.2/macos/arm64/dmg/Workbench_2026.10.10_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
