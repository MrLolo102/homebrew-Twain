
require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/files/5280710/twain-mac.tar.gz"
  sha256 "1bd7dc4aea77169bd241540d69ab1c8512d73a45977ce2a23f8058581baee26a"
  
  version "1.0"

  resource "twainpkg" do
    url "https://github.com/MrLolo102/twainpkg/releases/download/1.0/twainpkg-mac.tar.gz"
    sha256 "1bd7dc4aea77169bd241540d69ab1c8512d73a45977ce2a23f8058581baee26a"
  end

  def install
    bin.install "twain"

    resource("twainpkg").stage { bin.install "twainpkg" }
  end
end
