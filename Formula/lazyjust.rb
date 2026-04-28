# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.3/lazyjust-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "3d2bd73d81f8a8662fdd3aa89f5b8160af8b2862cc048aba99282af847a32a65"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.3/lazyjust-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "72d4f061c1a897a2f0e64b9e6a791b4e8ccd1640e2554b039495a596fa9a521a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.3/lazyjust-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1fe522fc632322d16211b175adf9129b0bb909f479f9e8cebecc7d806e18473"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.3/lazyjust-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19b4ecabeb0c92de43045d51608d8e4ae6f477719b511fcfae7e602bc715e3ec"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
