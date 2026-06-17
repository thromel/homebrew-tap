# typed: strict
# frozen_string_literal: true

# Local, read-only context compiler for AI coding agents.
class Ctxhelm < Formula
  desc "Local, read-only context compiler for AI coding agents"
  homepage "https://github.com/thromel/ctxhelm"
  url "https://github.com/thromel/ctxhelm/releases/download/v2.4.7/ctxhelm-v2.4.7-aarch64-apple-darwin.tar.gz"
  sha256 "6a3a0248ed0fcc9f2d5d31b1fbf9d29fa34ce1024b64d09e126d66a0ca3c4dda"
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
