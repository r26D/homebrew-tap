class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.9.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.1/macos/arm64/tarball/workbench-cli-2026.9.1-macos-arm64.tar.gz"
    sha256 "17f08b6374662debca273279b87e988fde5f7c6a33a395ee2f985ede0de12ffc"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.1/macos/amd64/tarball/workbench-cli-2026.9.1-macos-amd64.tar.gz"
    sha256 "4db68468d94af4e7d16976895e6ea5f63a3d17b814bd5294f175fbb4471d23eb"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
