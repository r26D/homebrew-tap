class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.9.8"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.8/macos/arm64/tarball/workbench-cli-2026.9.8-macos-arm64.tar.gz"
    sha256 "b27a6110b4d2c57b13c00bfa257d86df235aa40638b442ebb5f3b0fdfcad106c"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.8/macos/amd64/tarball/workbench-cli-2026.9.8-macos-amd64.tar.gz"
    sha256 "7a9fc0dd142a89a6bc28252d8a87429652493f5e380b1a0eb98727ee9d002dcf"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
