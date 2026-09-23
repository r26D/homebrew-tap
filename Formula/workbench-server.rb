class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.9.5"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.5/macos/arm64/tarball/workbench-server-2026.9.5-macos-arm64.tar.gz"
    sha256 "efe6990bffd7f2bd52411d086caf5f0099ba195d3afe7ea28b56f10648e1f556"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.5/macos/amd64/tarball/workbench-server-2026.9.5-macos-amd64.tar.gz"
    sha256 "baa26b60871db24872ee69b2af0bd714dd04d3b33d2e7a678632ce573451eb4f"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
