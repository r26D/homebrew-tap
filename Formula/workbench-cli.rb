class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.11.4"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.4/macos/arm64/tarball/workbench-cli-2026.11.4-macos-arm64.tar.gz"
    sha256 "a42f9f6f38b20df728bc3094a4c365401cef585ce5465c87b883ad6c24c187c5"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.4/macos/amd64/tarball/workbench-cli-2026.11.4-macos-amd64.tar.gz"
    sha256 "ea960df6e9beec3c52712d89590273516681a41bd32412cb3d5887c9f4f056e3"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
