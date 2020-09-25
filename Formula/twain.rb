
require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/files/5280710/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  
  version "1.0"

  resource "twainpkg" do
    url "https://github.com/MrLolo102/twainpkg/blob/master/twainpkg-mac.tar.gz"
    sha256 "c1b4ff35db1f0aa3cdd5495d9aefb56fa98b03012c5f176bce570edb2366a046"
  end

  def install
    bin.install "twain"

    resource("twainpkg").stage { bin.install "twainpkg" }
  end
end
