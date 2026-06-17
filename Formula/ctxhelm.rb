# typed: strict
# frozen_string_literal: true

# Local, read-only context compiler for AI coding agents.
class Ctxhelm < Formula
  desc "Local, read-only context compiler for AI coding agents"
  homepage "https://github.com/thromel/ctxhelm"
  url "https://github.com/thromel/ctxhelm/releases/download/v2.4.4/ctxhelm-v2.4.4-aarch64-apple-darwin.tar.gz"
  sha256 "3ab4c8699504bc240c8a0c87df3e2015a013b10d328c965376a896fc6a961034"
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
