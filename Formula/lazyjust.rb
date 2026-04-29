# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.0/lazyjust-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "5d6229874b8db70009d6acf7ca3d7740c24bd30a28e4e3c30e0df27e615de492"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.0/lazyjust-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "37465f58f0d34a8e947d7b635cfe87fa6c391debaa2a75b9e0033660f29edff4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.0/lazyjust-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21250304f2ee5339b367f28f2b3edab0e475828d3a0606496b45320e7816a629"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.0/lazyjust-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "573ed2aaae827198ae024e1ebf5c5191968ef4db0c2ae02061e4a3b64faaabd6"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
