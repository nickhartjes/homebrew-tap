# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.5/lazyjust-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "f54702eb6ff71a370ebaae1b6101878a7467269b3a500e4680d3a4dd6a0bb0ee"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.5/lazyjust-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "d6753149c489a404746558db6d6e3ed6b69631030c31f4a91cfbfd550cba2484"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.5/lazyjust-v0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9acc1d5b9e39bf8871b0eaee376fcbd50f8705e332429bc811cc06b441ce25b8"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.5/lazyjust-v0.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9a9a22ddc42877c7d3cd3c1c71b2498f56a1f23c67ff4b6db089634e7648717"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
