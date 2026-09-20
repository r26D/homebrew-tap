class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.9.4"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.4/macos/arm64/tarball/workbench-cli-2026.9.4-macos-arm64.tar.gz"
    sha256 "fc2eed35ec4d93e957b81a50ab52d31b830ccb363b381cd99301aae586487b17"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.4/macos/amd64/tarball/workbench-cli-2026.9.4-macos-amd64.tar.gz"
    sha256 "1d2bfce4dc10ed255a7fa259053b18bc24dc0df4b00001725b5d5248851101d5"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
