class Wardwell < Formula
  desc "Persistent project memory for Claude Code — MCP server + CLI"
  homepage "https://wardwell.dev"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-aarch64-apple-darwin.tar.gz"
      sha256 "8402506f59c925bf3cd22a27e89d0d1a674e5d009add28a502fa74efa6d725e9"
    else
      url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-x86_64-apple-darwin.tar.gz"
      sha256 "b932dec0a52baa62944a838cbb93a72bdc9e4ed1a356693c4cca086514d42cb6"
    end
  end

  on_linux do
    url "https://github.com/yakschuss/wardwell/releases/download/v#{version}/wardwell-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6c47b861c8bf0252bec616c420faabc50008ae078bafe831a283fd11c799d29c"
  end

  def install
    bin.install "wardwell"
  end

  test do
    assert_match "wardwell", shell_output("#{bin}/wardwell --version")
  end
end
