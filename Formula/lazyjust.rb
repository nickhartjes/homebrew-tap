# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.2/lazyjust-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "d6e1a46d6354b18a1e11633d794fc6792a444d0ec8bf5bc7c76089672a69e770"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.2/lazyjust-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "5989a5c5897ead0d9d556b25e47c08fd770a12c38b48327e92283cb139de5b9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.2/lazyjust-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "208594973be69a9ca36fc7c49e1cee3947425f2bafb6fc4964bde392b65b65a0"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.2/lazyjust-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e495a877a28e56971a5409fe83cfcbae1364a823716b692e3ca277c551d0f23"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
