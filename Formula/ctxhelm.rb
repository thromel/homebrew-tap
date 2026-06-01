# typed: strict
# frozen_string_literal: true

# Local, read-only context compiler for AI coding agents.
class Ctxhelm < Formula
  desc "Local, read-only context compiler for AI coding agents"
  homepage "https://github.com/thromel/ctxhelm"
  url "https://github.com/thromel/ctxhelm/releases/download/v1.1.9/ctxhelm-v1.1.9-aarch64-apple-darwin.tar.gz"
  sha256 "d9f4b0a4b38fcdfd1702873994b8f3ed4c63af6e88e0cd33b3635f104beb3c7d"
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
