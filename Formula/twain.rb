
require "language/node"

class Twain < Formula
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/MrLolo102/twain"
  url "https://github.com/MrLolo102/twain/archive/1.0.tar.gz"
  sha256 "d0e2331379f5fd5a8b87d9d8d971f1c7fe6f13589bf646a43882eed968159932"
  version "1.0"

  def install
    bin.install "twain"
  end
end
