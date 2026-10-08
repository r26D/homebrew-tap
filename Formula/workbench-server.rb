class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.10.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.2/macos/arm64/tarball/workbench-server-2026.10.1-macos-arm64.tar.gz"
    sha256 "e015468c71f1c1e4ed3ef4b4aa080644b9140f2d8c8fa656b6142f5bffc31ce1"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.2/macos/amd64/tarball/workbench-server-2026.10.1-macos-amd64.tar.gz"
    sha256 "b7681ffa6d7a0878e15915a179aeb142638fb26559f026290cfcf3735f70f4c0"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
