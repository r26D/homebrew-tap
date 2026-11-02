class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.11.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.2/macos/arm64/tarball/workbench-cli-2026.10.10-macos-arm64.tar.gz"
    sha256 "1381a0cfcbef9cf4fcca5d579513850b581b1ccdefbabfa600c7e4cecd0f68a6"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.2/macos/amd64/tarball/workbench-cli-2026.10.10-macos-amd64.tar.gz"
    sha256 "381b1fe2d61569784e1f6d77f8796feda3d4ac698f0dc9aafc7b125beca27cc4"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
