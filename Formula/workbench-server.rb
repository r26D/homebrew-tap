class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.11.4"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.4/macos/arm64/tarball/workbench-server-2026.11.4-macos-arm64.tar.gz"
    sha256 "f12b1db3b88f8390bab643f10aa05bdf4e749d4918af2e7528ae1e07a1add384"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.4/macos/amd64/tarball/workbench-server-2026.11.4-macos-amd64.tar.gz"
    sha256 "b62482d1b0a713f3b25b3a650d99a4bcb24c08165a3018d125ef84cefd7c5cc5"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
