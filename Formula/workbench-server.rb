class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.9.6"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.6/macos/arm64/tarball/workbench-server-2026.9.6-macos-arm64.tar.gz"
    sha256 "7aa1dc80e5c3403d0e90d9ec210c5743ece099cbd3dfd0b969cfe2031c358c1c"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.6/macos/amd64/tarball/workbench-server-2026.9.6-macos-amd64.tar.gz"
    sha256 "6d55bcd072fb02fcafd222eace7b3ba678877deec7cd37126f3aa30305450ea4"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
