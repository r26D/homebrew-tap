class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.9.4"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.4/macos/arm64/tarball/workbench-server-2026.9.4-macos-arm64.tar.gz"
    sha256 "63945fbd313582df90166d3056b47f44cf05a19333d661ecb052a00c7d573fb4"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.4/macos/amd64/tarball/workbench-server-2026.9.4-macos-amd64.tar.gz"
    sha256 "f73bb35b8cf8efcf3dc2eb9a42d2339dbe3d0deee91457fa76229b15cb7e9d06"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
