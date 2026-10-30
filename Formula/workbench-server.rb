class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.10.10"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.10/macos/arm64/tarball/workbench-server-2026.10.9-macos-arm64.tar.gz"
    sha256 "68bc3b00990fe3e848d9156d3e4cbfc626611c9265f38a00db5a12cbb61500fb"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.10/macos/amd64/tarball/workbench-server-2026.10.9-macos-amd64.tar.gz"
    sha256 "5f58b7d307e2fd622c3cc3826a7110a569bcf1ea0ab46d8e3f09a1704bcce0b6"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
