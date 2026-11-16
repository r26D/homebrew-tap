class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.11.6"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.6/macos/arm64/tarball/workbench-cli-2026.11.6-macos-arm64.tar.gz"
    sha256 "f37c0f290e676378cac53fd4547dda44ab802463fdbf52b9381340cf360b07a0"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.6/macos/amd64/tarball/workbench-cli-2026.11.6-macos-amd64.tar.gz"
    sha256 "b7b239d4a26300334f11024a4654e3b4b2664dd8f928a11afb9fba3354d9df61"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
