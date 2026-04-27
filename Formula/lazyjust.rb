# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.1/lazyjust-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "85f132dc672981438ebf9767b03086c952ec9098d0b2b0f5ed1541d26af25203"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.1/lazyjust-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "0fc8555f281203e228840b78bb7bac8818621a033655d89c3256d4d7bb09fca5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.1/lazyjust-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f7bdc0d4c5e4f315c818478b9f70b994e30feb788dc7af0306f7f2781394646"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.1/lazyjust-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "05e8cea909b78fde1c7d16e5c05f85d6a52a5945f75abc4857af82b5fee86136"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
