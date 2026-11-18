class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.11.7"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.7/macos/arm64/tarball/workbench-cli-2026.11.7-macos-arm64.tar.gz"
    sha256 "ec29b579d50b89e2e23abea3af034a802ebf8c8852ec3b67258cd28d962b01f9"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.7/macos/amd64/tarball/workbench-cli-2026.11.7-macos-amd64.tar.gz"
    sha256 "d0bc080228bbc3ef841c0b7738a67d2948c5f4199d0b0dc001a7cc93e127ceda"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
