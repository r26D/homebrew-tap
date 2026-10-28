class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.10.9"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.9/macos/arm64/tarball/workbench-cli-2026.10.9-macos-arm64.tar.gz"
    sha256 "9558f5574ba5f203a89f426f449a16db0ae1c29d3be114fa2a0bb84742dd3693"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.9/macos/amd64/tarball/workbench-cli-2026.10.9-macos-amd64.tar.gz"
    sha256 "bf8793d6a8857b9672be26817b6ba82c5c98b1b90969b67ae41685f5453a23fd"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
