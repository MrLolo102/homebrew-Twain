

class Twain < Formula

  homepage "https://github.com/Microsoft/cpprestsdk"
  # pull from git tag to get submodules
  url "https://github.com/Microsoft/cpprestsdk.git",
      tag:      "2.0",
      revision: "18212a2a7967e12d740bfb957e500892b3463c88"
  license "MIT"
  head "https://github.com/Microsoft/cpprestsdk.git", branch: "development"

  bottle do
    cellar :any
    sha256 "0b7d717716ebc8393007599ed02f9a4f8b36eef1f3dd3d54d11b0966751a4f87" => :catalina
    sha256 "feeabdfce6c4a065961f37c38578d626a50f8e7a3939343a6ed037f535418a02" => :mojave
    sha256 "f98e8ff4c5b371ffe541eb1fefc13a178b02c07e6fab906fd206e6c833827dfa" => :high_sierra
  end

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "openssl@1.1"
  
 
  resource "twain" do
  url "https://github.com/MrLolo102/twain/releases/download/2.0/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  version "2.0"
  end

  
  def install
    system "cmake", "-DBUILD_SAMPLES=OFF", "-DBUILD_TESTS=OFF", "Release", *std_cmake_args
    system "make", "install"
    
    resource("twain").stage { bin.install "twain" => "twain" }
  end
  
 end
  #desc "Cross-platform Text Expander written in Rust"
  #homepage "https://github.com/MrLolo102/twain"
  #url "https://github.com/MrLolo102/twain/files/5291445/twain-mac.tar.gz"
  #sha256 "00ad3d20ed69e5e74881f59d47471a6c3bc14638663aaaf97bf709651aed01af"
  #version "2.0"
  
 

  
