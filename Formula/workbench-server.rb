class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.10.6"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.6/macos/arm64/tarball/workbench-server-2026.10.6-macos-arm64.tar.gz"
    sha256 "e1d0673b571a7abebfe8584fcf3de8133133b2dc821916a4a3bdc9e7cf44b81b"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.6/macos/amd64/tarball/workbench-server-2026.10.6-macos-amd64.tar.gz"
    sha256 "43c700b99e6c9d2c80724dece5fd6ae933be26df91b9aaf42a70a306fb5841bd"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
