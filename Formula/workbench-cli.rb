class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.9.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.2/macos/arm64/tarball/workbench-cli-2026.9.2-macos-arm64.tar.gz"
    sha256 "951ee373debb79bea93d2fc851c0d2b50347a2f2255386f1695bfd394cd725d4"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.2/macos/amd64/tarball/workbench-cli-2026.9.2-macos-amd64.tar.gz"
    sha256 "8606df85935233a2745e382caee5e78ffb403ee88c7885ca0b70cd4cf1e3ca92"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
