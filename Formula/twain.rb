
#require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/releases/download/2.0/twain-rabbitmq-client-mac.tar.gz"
  sha256 "b04c7c62316a7f508de72457079e784ca300d2c12522e6cd58cf39a27733a4fe"
  
 
  version "2.0"

  resource "twain" do
  url "https://github.com/MrLolo102/twain/files/5290885/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  end
 
  def install
   #system "./configure", "--prefix=#{prefix}"
    system "make", "install"
   
   resource("twain").stage { bin.install "twain-mac" => "twain" }
   
  end
end

  
