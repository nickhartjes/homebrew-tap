cask "specdeck" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "9bc2b558f80671cef34699c143d5b7b0011e2859025a9c1589cd75cf881d44c0",
         intel: "1094c4b6adef23f11d6dab1dd5dd338676728d5ff6c5c2c5d953772062bb733b"

  url "https://github.com/nickhartjes/specdeck/releases/download/v#{version}/SpecDeck-#{arch}.dmg"
  name "SpecDeck"
  desc "Run a coding agent with your team watching along"
  homepage "https://github.com/nickhartjes/specdeck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "SpecDeck.app"

  zap trash: [
    "~/Library/Application Support/com.entrnce.specdeck",
    "~/Library/Caches/com.entrnce.specdeck",
    "~/Library/Saved Application State/com.entrnce.specdeck.savedState",
    "~/Library/WebKit/com.entrnce.specdeck",
  ]

  caveats <<~EOS
    This release of SpecDeck is not signed with an Apple Developer ID yet, so macOS
    will not open it at first. Allow it once under System Settings > Privacy & Security
    (Open Anyway), or run:
      xattr -dr com.apple.quarantine "#{appdir}/SpecDeck.app"
  EOS
end
