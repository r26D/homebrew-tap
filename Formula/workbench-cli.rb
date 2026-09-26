class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.9.7"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.7/macos/arm64/tarball/workbench-cli-2026.9.7-macos-arm64.tar.gz"
    sha256 "ca766bc562b1da4176f94c27240e9a1e760987e2113ca0e2a781b87a3d2e52c7"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.7/macos/amd64/tarball/workbench-cli-2026.9.7-macos-amd64.tar.gz"
    sha256 "30d60f61a419289f1d44c0c874ccc0f53648cfa8ee7815232f490931f08267ab"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
