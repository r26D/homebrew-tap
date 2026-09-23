class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.9.5"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.5/macos/arm64/tarball/workbench-cli-2026.9.5-macos-arm64.tar.gz"
    sha256 "5d1b2bd55138acadc7042f72fefaf263b6cf0359c67b8e47d67940a212cfbe16"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.5/macos/amd64/tarball/workbench-cli-2026.9.5-macos-amd64.tar.gz"
    sha256 "624517924684f4b747d99589f17a546f4817ac4e98f89c87117771b35442f655"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
