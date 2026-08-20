class RecordnowCli < Formula
  desc "Headless automation interface for Record Now projects"
  homepage "https://recordnow.s41r4j.in/"
  url "https://github.com/s41r4j/homebrew-recordnow/releases/download/v0.0.1/recordnow-cli-0.0.1-arm64.tar.gz"
  sha256 "bbd2c218081ef31ad2759b757feab5bb499f45f903e56b46cfdd976d3e998e3b"
  version "0.0.1"

  depends_on macos: ">= :sequoia"

  # Installed as `recordnow` on PATH, not `recordnow-cli` — the shorter name
  # is what scripts and AI agents actually type; the package/tarball keep
  # the longer name since that's what disambiguates it from the Cask.
  def install
    bin.install "recordnow-cli" => "recordnow"
  end

  test do
    assert_match "recordnow-cli", shell_output("#{bin}/recordnow --help")
  end
end
