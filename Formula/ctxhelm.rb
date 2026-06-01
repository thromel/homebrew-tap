# typed: strict
# frozen_string_literal: true

# Local, read-only context compiler for AI coding agents.
class Ctxhelm < Formula
  desc "Local, read-only context compiler for AI coding agents"
  homepage "https://github.com/thromel/ctxhelm"
  url "https://github.com/thromel/ctxhelm/releases/download/v1.1.11/ctxhelm-v1.1.11-aarch64-apple-darwin.tar.gz"
  sha256 "4c1b43d425ff2bd14491be2c120fcda30a0f8576474e75b0a0eec1fc70a8a7e8"
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
