cask "vibe-buddy" do
  version "0.4.0"
  sha256 "4fb5ac4460de4363a2b511c9135b6ccd5e519e5658f847e2bec10e362feda5da"

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
