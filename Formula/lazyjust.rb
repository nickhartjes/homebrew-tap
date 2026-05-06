# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.3/lazyjust-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "a64353aa41a95676c369c98067e6635e82d01cc12358bcfabce336d80c341a17"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.3/lazyjust-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "9ebf59c954ff066a36ae60d5e1882c59b3d87921f2525151d99cb5b3157ad184"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.3/lazyjust-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e93065ef6599513f06fa623d2697d45aa8e6b0b3f39e08291e9525d99787dfa"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.3/lazyjust-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "600c8366baca409a6b70fb7bb1cc3028138f1a29b5db67fda145236fc278c659"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
