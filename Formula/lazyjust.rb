# typed: false
# frozen_string_literal: true

class Lazyjust < Formula
  desc "Lazy TUI for just — browse, search, and run recipes without memorizing commands"
  homepage "https://github.com/nickhartjes/lazyjust"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.6/lazyjust-v0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "4b7dcfc57df807896b0734afd025ec0cf7b563edcba8e3ec13ab97777990cf1f"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.6/lazyjust-v0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "c2a3b36dfcafeefd29d156001413205d90cacb193de801435b7c2624d0da43aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.6/lazyjust-v0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "808e015e24e992318a7401a59e15c70b8b4942ad3d383726fbdd75a151f94cbc"
    end
    on_arm do
      url "https://github.com/nickhartjes/lazyjust/releases/download/v0.2.6/lazyjust-v0.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a50089c7e47c885836a4a59659d0045056ab054e21281a214c56285d42f840c3"
    end
  end

  def install
    bin.install "lazyjust"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyjust --version")
  end
end
