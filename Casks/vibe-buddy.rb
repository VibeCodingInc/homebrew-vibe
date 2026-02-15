cask "vibe-buddy" do
  version "0.4.1"
  sha256 "9e83cb5e20121220d41034a2c331e2e7940ca7db25fa45ac994a9b856ddbda5d"

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
