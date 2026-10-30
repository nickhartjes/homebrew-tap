cask "specdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0-rc.1"
  sha256 arm:   "9d6e6d1321c79c764a3d17e1a7f71e009a92e75e17635f2619368c9e5c01f9d6",
         intel: "31d0bbf0e0e5e515d188b6ba1cca8fa0ae77cb43d283b6524150c9ba018a51fd"

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
