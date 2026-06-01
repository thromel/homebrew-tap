# typed: strict
# frozen_string_literal: true

# Local, read-only context compiler for AI coding agents.
class Ctxpack < Formula
  desc "Local, read-only context compiler for AI coding agents"
  homepage "https://github.com/thromel/ctxpack"
  url "https://github.com/thromel/ctxpack/releases/download/v1.1.6/ctxpack-v1.1.6-aarch64-apple-darwin.tar.gz"
  sha256 "7805f240956a2d7fdb3f26d04d8858692526242c597f75748421964fd9600b84"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "ctxpack"
  end

  test do
    assert_match "ctxpack #{version}", shell_output("#{bin}/ctxpack --version")
    shell_output("#{bin}/ctxpack --help")
  end
end
