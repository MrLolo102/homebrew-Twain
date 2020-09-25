
require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/files/5280710/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  
  version "1.0"

  resource "twainpkg" do
    url "https://github.com/MrLolo102/twainpkg/files/5281310/twainpkg-mac.tar.gz"
    sha256 "57d0009cf45d45019e67667377e8ee0ae2dae6a48aaec373c4094f137854e077"
  end

  def install
    bin.install "twain"

    #resource("twainpkg").stage { bin.install "twainpkg-mac" => "twainpkg" }
  end
end
