cask "vibe" do
  version "0.3.21"
  sha256 "435dd418421933f933067030973d9f3afc724c7d1cf5fed5c5d1ef870b2b770e"

  url "https://www.slashvibe.dev/downloads/Vibe_#{version}_aarch64.dmg"
  name "Vibe"
  desc "The Social Terminal - ship together with /vibe"
  homepage "https://www.slashvibe.dev"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Vibe.app"

  zap trash: [
    "~/Library/Application Support/com.vibe.terminal",
    "~/Library/Caches/com.vibe.terminal",
    "~/Library/Preferences/com.vibe.terminal.plist",
    "~/Library/Saved Application State/com.vibe.terminal.savedState",
  ]

  caveats <<~EOS
    /vibe is a social terminal for developers building with Claude Code.

    After installation, open Vibe from Applications or run:
      open -a Vibe

    To connect your account, use the /vibe MCP tools in Claude Code:
      npx @anthropic/vibe init
  EOS
end
