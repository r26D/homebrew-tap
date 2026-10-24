class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.10.6"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.6/macos/arm64/tarball/workbench-cli-2026.10.6-macos-arm64.tar.gz"
    sha256 "e29e878b02e9bdd035ff96c7a06d8be34a5374af61393a0c3eb785d193bca4c1"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.10.6/macos/amd64/tarball/workbench-cli-2026.10.6-macos-amd64.tar.gz"
    sha256 "f1a8fb3459b5afed3afbaa9ec93837531796de100d4a4cce43be5292c34691a9"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
