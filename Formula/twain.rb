
require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/Twain/files/5275101/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  
  version "1.0"

  resource "twainpkg" do
  url "https://github.com/MrLolo102/twainpkg/archive/1.0.tar.gz"
  sha256 "b030991abb643ee078d8c536baf4a96c342d6977c9c325e33cf1b1c99ed0e365"
  end

  def install
    bin.install "twain"

    resource("twainpkg").stage { bin.install "twainpkg-mac" => "twainpkg" }
  end
end
