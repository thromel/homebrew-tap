# typed: strict
# frozen_string_literal: true

# Local, read-only context compiler for AI coding agents.
class Ctxhelm < Formula
  desc "Local, read-only context compiler for AI coding agents"
  homepage "https://github.com/thromel/ctxhelm"
  url "https://github.com/thromel/ctxhelm/releases/download/v2.4.3/ctxhelm-v2.4.3-aarch64-apple-darwin.tar.gz"
  sha256 "be2ccef93eab98c4aa831437c1dc5a0f0ee9b74306c0f941da59baab13dcd3a8"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "ctxhelm"
  end

  test do
    assert_match "ctxhelm #{version}", shell_output("#{bin}/ctxhelm --version")
    shell_output("#{bin}/ctxhelm --help")
  end
end
