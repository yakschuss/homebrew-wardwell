class Wardwell < Formula
  desc "Persistent project memory for Claude Code — MCP server + CLI"
  homepage "https://wardwell.dev"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-aarch64-apple-darwin.tar.gz"
      sha256 "1cb4bf8616dbb9506adeaa9cfc19c6cccd2dde18321c9097ded5c5eec3b8d97d"
    else
      url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ee0b9352990a75101afb7dbde279ad567f07145ec38b0ff5626ba5feabed9c12"
  end

  def install
    bin.install "wardwell"
  end

  test do
    assert_match "wardwell", shell_output("#{bin}/wardwell --version")
  end
end
