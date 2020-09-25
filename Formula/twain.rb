
#require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/files/5280710/twain-mac.tar.gz"
  sha256 "5102fd7ce728dbfee9360450537df7b1371131d9f2110da7cd84cadae67945db"
  
 
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
