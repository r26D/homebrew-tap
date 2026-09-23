cask "workbench" do
  version "2026.9.6"
  sha256 "834870fe1fafb492283abc993b2e973228b585d25e1d8c57c83e072ff11f4da3"
  url "https://updates.r26d.dev/apps/workbench/releases/2026.9.6/macos/arm64/dmg/Workbench_2026.9.6_aarch64.dmg"

  name "Workbench"
  desc "Desktop harness for AI driven software development"
  homepage "https://workbench.r26d.dev"

  app "Workbench.app"
  auto_updates true
end
