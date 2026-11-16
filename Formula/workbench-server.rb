class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.11.6"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.6/macos/arm64/tarball/workbench-server-2026.11.6-macos-arm64.tar.gz"
    sha256 "b4515bb206896f591e3b260dbc80d1581fee73113518ec073d1845d99ea048b6"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.6/macos/amd64/tarball/workbench-server-2026.11.6-macos-amd64.tar.gz"
    sha256 "e1621483e370dd358c47a662e2b3df0598a31ba54c97c91bf23b5aed29fb5f42"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
