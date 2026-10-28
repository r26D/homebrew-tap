class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.10.8"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.8/macos/arm64/tarball/workbench-cli-2026.10.8-macos-arm64.tar.gz"
    sha256 "b8e4dfa9f7b12829535c0e99db88668fc44aff5043b6a97a09a7b0e8450896d4"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.8/macos/amd64/tarball/workbench-cli-2026.10.8-macos-amd64.tar.gz"
    sha256 "681b765234f5081ba76b00719dfc50dc8f0d573230243d78749d595954eed3e2"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
