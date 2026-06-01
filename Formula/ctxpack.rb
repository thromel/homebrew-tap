# typed: strict
# frozen_string_literal: true

# Local, read-only context compiler for AI coding agents.
class Ctxpack < Formula
  desc "Local, read-only context compiler for AI coding agents"
  homepage "https://github.com/thromel/ctxpack"
  url "https://github.com/thromel/ctxpack/releases/download/v1.1.7/ctxpack-v1.1.7-aarch64-apple-darwin.tar.gz"
  sha256 "827e2fa7278e0df659b82e3a778aa13a2ec6cfab8981f9156e7b9e82bb3f3b64"
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
