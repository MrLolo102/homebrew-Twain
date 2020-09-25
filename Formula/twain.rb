
#require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/files/5282090/twain_service-mac.tar.gz"
  sha256 "5102fd7ce728dbfee9360450537df7b1371131d9f2110da7cd84cadae67945db"
  
  
  version "2.0"

  resource "twain" do
  url "https://github.com/MrLolo102/twain/files/5280710/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  end

  def install
    bin.install "twain_service"

    resource("twain").stage { bin.install "twain" => "twain" }
  end
end
