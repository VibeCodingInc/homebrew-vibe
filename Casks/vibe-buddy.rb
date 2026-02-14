cask "vibe-buddy" do
  version "0.4.0"
  sha256 "912578e1381d57333aaa66ea5499b6d1a565e247aeb8bc41bd63d2e8fbc98df3"

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
