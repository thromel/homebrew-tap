# typed: strict
# frozen_string_literal: true

# Local, read-only context compiler for AI coding agents.
class Ctxpack < Formula
  desc "Local, read-only context compiler for AI coding agents"
  homepage "https://github.com/thromel/ctxpack"
  url "https://github.com/thromel/ctxpack/releases/download/v1.1.5/ctxpack-v1.1.5-aarch64-apple-darwin.tar.gz"
  sha256 "0ca4ce00012a767c5a400e79b9c81471398d5bd94c2cfccb2b8264e8f74f3d9c"
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
