# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.4/lazyjust-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "7faad8f851104ab13e9dd3c6a3ff1301e0065ce09cd2efdbd844c9852915f8db"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.4/lazyjust-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "2dcf1e1b596156106136f164b226163a3fe12534e790907534382f97d25ea18c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.4/lazyjust-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b498b90a7beda04994a9bb4bec8414a88d3addb9e754f6e77a8749be365bc569"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.4/lazyjust-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d1c4e6e992ec526a06484b94b88951e4d25287112584bb627f6f2018531afeea"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
