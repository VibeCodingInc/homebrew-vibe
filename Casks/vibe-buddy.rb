cask "vibe-buddy" do
  version "0.4.2"
  sha256 "7c9aba053bd7b54cbff5bca16b054b13986055f025ab9d3aa5adddf195943166"

  url "https://www.slashvibe.dev/downloads/Vibe_Buddy_#{version}.dmg"
  name "Vibe Buddy"
  desc "The /vibe buddy list — see who's building, DM with context"
  homepage "https://www.slashvibe.dev"

  depends_on macos: ">= :ventura"

  app "Vibe Buddy.app"

  zap trash: [
    "~/Library/Application Support/com.vibe.buddy",
    "~/Library/Caches/com.vibe.buddy",
    "~/Library/Preferences/com.vibe.buddy.plist",
  ]
end
