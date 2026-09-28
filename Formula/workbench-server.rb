class WorkbenchServer < Formula
  desc "Headless Workbench backend for remote access"
  homepage "https://workbench.r26d.dev"
  version "2026.9.9"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.9/macos/arm64/tarball/workbench-server-2026.9.8-macos-arm64.tar.gz"
    sha256 "88d07013bb380031a41de7f1468976f2508d1dfff91217cafa25c3fd339f2029"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.9.9/macos/amd64/tarball/workbench-server-2026.9.8-macos-amd64.tar.gz"
    sha256 "63618df76959a95acb83236b8819ec257f1f4c80f0027435bcc38e1d14810eb9"
  end

  depends_on "r26d/tap/workbench-cli"

  def install
    bin.install "bin/workbench-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench-server --version")
  end
end
