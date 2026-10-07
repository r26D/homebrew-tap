class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.10.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.1/macos/arm64/tarball/workbench-cli-2026.10.1-macos-arm64.tar.gz"
    sha256 "cd64b9db845d5eb8ea65919458c85e2888e33d4f4a94ee56e7f91632489cb6b4"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.1/macos/amd64/tarball/workbench-cli-2026.10.1-macos-amd64.tar.gz"
    sha256 "0f0cf1757a24f2fb1d7eca36ed9aefc7f0a39cc6d488e123c1c823620c883473"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
