class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.8.15"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.8.15/macos/arm64/tarball/workbench-server-2026.8.15-macos-arm64.tar.gz"
    sha256 "29f0b74dfe4f3c78132aff3c411399af83c56810f6fea54565b962f5f29239b4"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.8.15/macos/amd64/tarball/workbench-server-2026.8.15-macos-amd64.tar.gz"
    sha256 "48cc8a52518cca2b541815b85eb6b317ede0be218477f87e6ca86eb2c6e1a353"
  end

  depends_on "r26D/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
