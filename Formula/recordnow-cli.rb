class RecordnowCli < Formula
  desc "Headless automation interface for Record Now projects"
  homepage "https://recordnow.s41r4j.in/"
  url "https://github.com/s41r4j/homebrew-recordnow/releases/download/v0.1.0/recordnow-cli-0.1.0-arm64.tar.gz"
  sha256 "098eeec2ad15be576e27e418f32d97c8f70083ccb64f6a9800de60d1d743c150"
  version "0.1.0"

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
