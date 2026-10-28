class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.10.8"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.8/macos/arm64/tarball/workbench-server-2026.10.8-macos-arm64.tar.gz"
    sha256 "25953b9c9c2e06d528cdb9c233d759826c24b5469845f78db74c830dc300ff34"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.8/macos/amd64/tarball/workbench-server-2026.10.8-macos-amd64.tar.gz"
    sha256 "0fea27b17efe7710f929060f5ef86872fc02be407569222efbf18d15cf424ebd"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
