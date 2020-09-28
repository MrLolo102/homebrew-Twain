
#require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/files/5280710/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  
 
  version "2.0"

  resource "twain" do
  url "https://github.com/MrLolo102/twain/tree/master/build"
  sha256 "e7f47153effcd8afd833fcc3fb1a268292402d75e3fc9cb956df3107ceb664b2"
  
  
  end

  def install
    #bin.install "twain"
    resource("twain").stage { system "c++", *Language::C.setup_install_args(prefix) }
  end
  #install cpprestsdk
  #def install 
  
  #end
  #add /usr/local/lib
  #def
  #end
  
end
