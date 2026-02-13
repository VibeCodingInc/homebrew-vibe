cask "vibe-buddy" do
  version "0.4.0"
  sha256 "828ef4a4486d40318398bed99bd1cd658a7bf8703ef3557be21225c18df1b3e6"

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
