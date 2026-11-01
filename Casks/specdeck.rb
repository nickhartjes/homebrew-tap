cask "specdeck" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "a4716a5a38a98aa50ecc330b96f59a5aeae7a7545e7ec04b92e9fa2410eb3cc8",
         intel: "13f3db4b9e2a21cf15a123cb7c1a18d267729755c6844b04c9b7398d3da68ecd"

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
