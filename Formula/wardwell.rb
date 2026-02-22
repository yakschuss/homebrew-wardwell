class Wardwell < Formula
  desc "Persistent project memory for Claude Code — MCP server + CLI"
  homepage "https://wardwell.dev"
  version "0.3.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-aarch64-apple-darwin.tar.gz"
      sha256 "48573c8e6ef630a5cbb211f275381727fbd241e01dade7addd439c1c0cbefb6a"
    else
      url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-x86_64-apple-darwin.tar.gz"
      sha256 "ec549eeea38ecaa96506b67fd619c74d1ef106c46a0999a55d1013146366f874"
    end
  end

  on_linux do
    url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5f7c050935b36009475eec7af49e732c5804a114294ac3810cf5016786dd4d0f"
  end

  def install
    bin.install "wardwell"
  end

  test do
    assert_match "wardwell", shell_output("#{bin}/wardwell --version")
  end
end
