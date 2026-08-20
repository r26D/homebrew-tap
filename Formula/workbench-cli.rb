class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.8.16"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.8.16/macos/arm64/tarball/workbench-cli-2026.8.15-macos-arm64.tar.gz"
    sha256 "2f567da0e1beeefb804c7dbc9bb3b8bde409e1f2c4534dfb360c48d969cb7cd1"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.8.16/macos/amd64/tarball/workbench-cli-2026.8.15-macos-amd64.tar.gz"
    sha256 "6322ab28bd254926c9ef2b3ade9aa733f6d43dd79cf08c562346b191c63bf2fe"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
