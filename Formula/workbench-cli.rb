class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.9.6"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.6/macos/arm64/tarball/workbench-cli-2026.9.6-macos-arm64.tar.gz"
    sha256 "8d74970c29316fe711832e45cf962e23107a65886dbb27b5c1329cad33f45e70"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.6/macos/amd64/tarball/workbench-cli-2026.9.6-macos-amd64.tar.gz"
    sha256 "7561ee9c64051718aae30c2928287527b094f1c57bd7fcfd67d6ba41d5e5d950"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
