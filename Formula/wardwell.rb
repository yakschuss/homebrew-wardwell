class Wardwell < Formula
  desc "Persistent project memory for Claude Code — MCP server + CLI"
  homepage "https://wardwell.dev"
  version "0.7.21"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-aarch64-apple-darwin.tar.gz"
      sha256 "04cbd4fd5810919d80648a5a64b5fde2a4423520b7913f941c47b0c7772ded17"
    else
      url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eef2df91c748e7e8d8ecc1ad1d0003b8c86d7cc83f4cede4f326e56018e0e0b7"
  end

  def install
    bin.install "wardwell"
  end

  test do
    assert_match "wardwell", shell_output("#{bin}/wardwell --version")
  end
end
