cask "recordnow" do
  version "0.1.0"
  sha256 "07484b43757685fcb6ea4256d008137deadaf56f2ef8ce18a093c32bb5f30f87"

  url "https://github.com/s41r4j/homebrew-recordnow/releases/download/v#{version}/RecordNow-#{version}.zip"
  name "Record Now"
  desc "Native macOS screen recording with selection-based editing and up to 4K export"
  homepage "https://recordnow.s41r4j.in/"

  depends_on macos: ">= :sequoia"

  app "Record Now.app"

  zap trash: [
    "~/Library/Preferences/com.recordnow.app.plist",
    "~/Library/Caches/com.recordnow.app",
  ]
end
