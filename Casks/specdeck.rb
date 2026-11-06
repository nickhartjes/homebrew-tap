cask "specdeck" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "90bff0fdadd46899a4cabb294f82a7d99e3b2b3a7f7b442cfdd7bdf35ce73990",
         intel: "2097475f3b844efb0989c942b5eeb38b5747fbc31d7539d31b24e075238ba985"

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
