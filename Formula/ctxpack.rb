# typed: strict
# frozen_string_literal: true

# Local, read-only context compiler for AI coding agents.
class Ctxpack < Formula
  desc "Local, read-only context compiler for AI coding agents"
  homepage "https://github.com/thromel/ctxpack"
  url "https://github.com/thromel/ctxpack/releases/download/v1.1.4/ctxpack-v1.1.4-aarch64-apple-darwin.tar.gz"
  sha256 "24101f411da3dae73dbd5ce7f24b0f99427ac4ab016885b72cca004ef1b619c9"
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
