cask "specdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "74cc8afbcd309ff2085e2863233f2f494f68d4f5c6373cf8849f86d1f676f3ed",
         intel: "551495cee5858db695b06159a4be98e9304ea9f91ead09d0bc942b402fd878bb"

  url "https://github.com/nickhartjes/specdeck/releases/download/v#{version}/SpecDeck-#{arch}.dmg"
  name "SpecDeck"
  desc "Share a Claude Code session with your team"
  homepage "https://github.com/nickhartjes/specdeck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "SpecDeck.app"

  zap trash: [
    "~/Library/Application Support/SpecDeck",
    "~/Library/Caches/@specdeckapp-updater",
    "~/Library/Logs/SpecDeck",
    "~/Library/Preferences/com.entrnce.specdeck.plist",
    "~/Library/Saved Application State/com.entrnce.specdeck.savedState",
  ]
end
