

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/files/5291445/twain-mac.tar.gz"
  sha256 "00ad3d20ed69e5e74881f59d47471a6c3bc14638663aaaf97bf709651aed01af"
  version "2.0"
  
  depends_on "cpprestsdk" 
  
  def install
  
    #system "cmake", "-DBUILD_SAMPLES=OFF", "-DBUILD_TESTS=OFF", "Release", *std_cmake_args
    #system "make", "install"
    bin.install "twain"
  end
end
  
  
 

  
