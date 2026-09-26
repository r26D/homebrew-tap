class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.9.7"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.7/macos/arm64/tarball/workbench-server-2026.9.7-macos-arm64.tar.gz"
    sha256 "a6802aa98c244dc8b96591bc0561d658e88c4cfad000f941504ed7f45c413d39"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.7/macos/amd64/tarball/workbench-server-2026.9.7-macos-amd64.tar.gz"
    sha256 "ba0f9c8edd284fb2c29d3183903fcb7e797a3821479022324bec2be1be008f63"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
