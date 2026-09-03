class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.9.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.1/macos/arm64/tarball/workbench-server-2026.9.1-macos-arm64.tar.gz"
    sha256 "b7fcbe08664aface22abec91102529e2ea615863955f6e6f1fb6989e56c1c8ec"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.1/macos/amd64/tarball/workbench-server-2026.9.1-macos-amd64.tar.gz"
    sha256 "c11c7279c09932a7a940fddfb86e95698219402a20d58e5ff657702f0d4692e3"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
