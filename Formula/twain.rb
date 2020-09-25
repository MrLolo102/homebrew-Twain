
require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/Twain/files/5275101/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  url "https://github.com/MrLolo102/twain/releases/download/1.0/twainpkg-mac.tar.gz"
  sha256 "1bd7dc4aea77169bd241540d69ab1c8512d73a45977ce2a23f8058581baee26a"
  version "1.0"
  
  def install
    bin.install "twain"
  end
end
