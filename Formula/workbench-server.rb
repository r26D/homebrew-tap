class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.11.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.2/macos/arm64/tarball/workbench-server-2026.10.10-macos-arm64.tar.gz"
    sha256 "432797b6d757fc90a04ad138529a7ec7065dc9ecf3dff347c9d86fd4ca4587f8"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.2/macos/amd64/tarball/workbench-server-2026.10.10-macos-amd64.tar.gz"
    sha256 "37c3d668517dfdd288ea78db6e6de26b360c6bce2ae581ef8014cd1d14988c58"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
