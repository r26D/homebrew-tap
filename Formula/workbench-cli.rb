class WorkbenchCli < Formula
  desc "Workbench command-line client"
  homepage "https://workbench.r26d.dev"
  version "2026.11.5"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.5/macos/arm64/tarball/workbench-cli-2026.11.5-macos-arm64.tar.gz"
    sha256 "e54fd02de73495ee7095fe8eb11423371c44f235b977f6b415214fefaec9b4a9"
  else
    url "https://updates.r26d.dev/apps/workbench/releases/2026.11.5/macos/amd64/tarball/workbench-cli-2026.11.5-macos-amd64.tar.gz"
    sha256 "3fb49dd40ffbbb3f1a148bc73a3bf0e7659ab86cbbc97312a160b9c554a98822"
  end

  def install
    bin.install "bin/workbench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workbench --version")
  end
end
