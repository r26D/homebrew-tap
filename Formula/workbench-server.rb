class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.11.7"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.7/macos/arm64/tarball/workbench-server-2026.11.7-macos-arm64.tar.gz"
    sha256 "72552a85837f3acc7f7515ed15891bd4a2d49083fa83f8d83dc90c95ec01d948"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.7/macos/amd64/tarball/workbench-server-2026.11.7-macos-amd64.tar.gz"
    sha256 "04897230925c098654863cafccb21e20686f719a1b6241ffed2aa428b1af8fc2"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
