# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.2/lazyjust-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "a3adb9851b0cf4b749a8d17732ad56fc2fac227bba2e2ea4f1bffa969db168ba"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.2/lazyjust-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "4523e45e376b9137496bbb5208d2b745c7b61d3477776202bce4e65682716441"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.2/lazyjust-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "448f2552d73769afedc8c4220f4afcf8a716debc2dc4560064a10f3f49b0d9c8"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.1.2/lazyjust-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02c3ca8e138f0ab3ba6e3ad90518748a6b79339c8fdee059d97e0cc1a8faa79a"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
