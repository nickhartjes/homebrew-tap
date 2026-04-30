# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.1/lazyjust-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "7c4ab1c3d65645696d2adb4d13d610e0e161f730015aa49a78e51147e86e2d04"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.1/lazyjust-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "7ace3423e9d1ddd015c403b3684f685d33480046ef970eaa6a3689f54c34d4d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.1/lazyjust-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a200bcdc56709c45356f4ffb62ddb8e51e944e047e000d6e390e2509a5cc20a"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.1/lazyjust-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd4329a56a25f81615b44595476561f0568bbfc86c680c47a4102cc9e4df0b5d"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
