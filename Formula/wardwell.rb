class Wardwell < Formula
  desc "Persistent project memory for Claude Code — MCP server + CLI"
  homepage "https://wardwell.dev"
  version "0.10.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-aarch64-apple-darwin.tar.gz"
      sha256 "e70f84cf7022d42a70d306c8ba3d28fe0b9b61107b6faa633799ec4b53d12380"
    else
      url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4e0982880c04b7a858fb8e3c569fb3da38557e8fdf51225ef2eda58dd1413caf"
  end

  def install
    bin.install "wardwell"
  end

  test do
    assert_match "wardwell", shell_output("#{bin}/wardwell --version")
  end
end
