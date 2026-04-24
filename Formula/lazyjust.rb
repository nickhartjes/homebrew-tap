# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.0/lazyjust-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "bff2b3b82a94b1a56837e4723672e498bcdb294cd0f611f2a433c432c3dfcba0"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.0/lazyjust-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8990838d060290c50c9ea601f92d639bcbce997bb93f45bd7a41c2af52cdb5e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.0/lazyjust-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56c9bb6be050f9cda4b7053ba1e79e7e9a44221d2665ad4634ae940602ba2e67"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.0/lazyjust-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f7999717176334830d9d647955d04320847814cdefd5d2ade5f94ca181d65b3"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
