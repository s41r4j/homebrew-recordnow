cask "recordnow" do
  version "0.0.1"
  sha256 "b44c262028a081b02a43eb915579df3ba823859ce9ced0d0e059f4c13c805de7"

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
