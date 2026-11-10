class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.11.5"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.5/macos/arm64/tarball/workbench-server-2026.11.5-macos-arm64.tar.gz"
    sha256 "f0ff552c9112d9d2098f62a85860b6dab56da02f78a44f25a2fc9ef08a0e5a25"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.5/macos/amd64/tarball/workbench-server-2026.11.5-macos-amd64.tar.gz"
    sha256 "d9b9f1dabedc608db754b482644bc4f04075638192181d9ee084ccd46e08f577"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
