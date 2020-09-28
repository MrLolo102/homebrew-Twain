
#require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/files/5291445/twain-mac.tar.gz"
  sha256 "https://github.com/MrLolo102/twain/files/5291345/twain-mac.tar.gz"
  version "2.0"

  resource "twain" do
  url "https://github.com/MrLolo102/twain/releases/download/2.0/twain-rabbitmq-client-mac.tar.gz"
  sha256 "b04c7c62316a7f508de72457079e784ca300d2c12522e6cd58cf39a27733a4fe"
  end
 
  def install
    bin.install "twain"
   
   resource("twain").stage { bin.install "twain-rabbitmq-client-mac" => "twain" }
   
  end
end

  
