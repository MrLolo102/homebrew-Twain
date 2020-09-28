
#require "language/node"

class Twain < Formula
  #desc "Cross-platform Text Expander written in Rust"
  #homepage "https://github.com/MrLolo102/twain"
  #url "https://github.com/MrLolo102/twain/files/5280710/twain-mac.tar.gz"
  #sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  
 
  #version "2.0"

  #resource "twain" do
  #url "https://github.com/MrLolo102/twain/tree/master/build"
  #sha256 "2a2787bf2f24ae710754cceb8e52ed6dfcaf296b88789e179b14b8c1affaa96b"
  
  
  #end

  #def install
    #bin.install "twain"
   
  #end
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/releases/download/2.0/twain-mac.tar.gz"
  sha256 "f99d1c13aa5fa296898a181dff9b82fb25f6cc0933dbaa7a475d8109bd54209d"
  #head "https://github.com/silnrsi/graphite.git"

  depends_on "cmake" => :build
  #depends_on "freetype" => :build unless OS.mac?

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  end
  

  
