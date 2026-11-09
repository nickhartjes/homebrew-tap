cask "specdeck" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "3d73a1d4b36ce16b568a2e8794c27a928e57f275f87209351c4c85143132458b",
         intel: "1e87169b7b50551238f55d00a7ca50f1067b4e04eeb0919c264a1be964db6f71"

  url "https://github.com/nickhartjes/specdeck/releases/download/v#{version}/SpecDeck-#{arch}.dmg"
  name "SpecDeck"
  desc "Run a coding agent with your team watching along"
  homepage "https://github.com/nickhartjes/specdeck"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (auto-update design decision 5); brew upgrade --greedy still works.
  auto_updates true
  depends_on macos: :big_sur

  app "SpecDeck.app"

  # Releases up to 1.3 used the identifier com.entrnce.specdeck; upgraded installs keep its folders.
  zap trash: [
    "~/Library/Application Support/nl.nickhartjes.specdeck",
    "~/Library/Caches/nl.nickhartjes.specdeck",
    "~/Library/Saved Application State/nl.nickhartjes.specdeck.savedState",
    "~/Library/WebKit/nl.nickhartjes.specdeck",
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
