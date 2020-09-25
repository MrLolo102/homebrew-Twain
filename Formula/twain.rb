
#require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/files/5280710/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  
 
  version "2.0"

  resource "twain" do
  url "https://github.com/MrLolo102/twain/files/5282022/build-mac.tar.gz"
  sha256 "94d82f83028f87d7f30c196b65cf9615fa0d979ebde08c69b7242bcf44d15e7f"
  
  
  end

  def install
    bin.install "twain"

    #resource("twain").stage { bin.install "twain" => "twain" }
  end
end
