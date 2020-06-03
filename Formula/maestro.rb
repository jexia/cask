# This file was generated by GoReleaser. DO NOT EDIT.
class Maestro < Formula
  desc "A straightforward service orchestrator"
  homepage "https://github.com/jexia/maestro"
  version "2.0.0-beta.14"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jexia/maestro/releases/download/v2.0.0-beta.14/maestro-2.0.0-beta.14-darwin-amd64.tar.gz"
    sha256 "58c8fe6973d3fe3413af6f0ad35f945bda41fc578bea801f1d87ebbdc16977ba"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jexia/maestro/releases/download/v2.0.0-beta.14/maestro-2.0.0-beta.14-linux-amd64.tar.gz"
      sha256 "e0ee6c82399fba78a31522ba8195d99aeecf67ce7639325a613a208a3b65cf9f"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jexia/maestro/releases/download/v2.0.0-beta.14/maestro-2.0.0-beta.14-linux-arm64.tar.gz"
        sha256 "745c6bb369502a620b3bdf4b61631484d00a89f2080cc86cc8f72e4b3568c6d7"
      else
        url "https://github.com/jexia/maestro/releases/download/v2.0.0-beta.14/maestro-2.0.0-beta.14-linux-arm.tar.gz"
        sha256 "dc144be4fbb7294bfa8274345d64b4d756ca5376f5860295ad96fdad763a6535"
      end
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    system "#{bin}/maestro -v"
  end
end
