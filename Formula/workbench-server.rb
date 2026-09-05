class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.9.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.2/macos/arm64/tarball/workbench-server-2026.9.2-macos-arm64.tar.gz"
    sha256 "fac8bfcd503af132ee7c449a3e97bebfd8939a50f41fb188655927d373bd6d0a"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.2/macos/amd64/tarball/workbench-server-2026.9.2-macos-amd64.tar.gz"
    sha256 "3713bfdf299899eabdb873a0500742949de336c27265c3a65b25bcee760323d7"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
