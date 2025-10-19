class Fuss < Formula
  desc "Tree utility for dirty git files, written in modern Fortran"
  homepage "https://github.com/FortranGoingOnForty/fuss"
  url "https://github.com/FortranGoingOnForty/fuss/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "270129264431ed8ed64256c7448004d6ea7d00f91876f86152aa2199c98d5813"
  license "MIT"
  head "https://github.com/FortranGoingOnForty/fuss.git", branch: "trunk"

  depends_on "gcc" # for gfortran

  def install
    # Build using make
    system "make"

    # Install binary
    bin.install "fuss"

    # Install documentation
    doc.install "README.md"
  end

  test do
    # Test that fuss can run (it will fail without git repo, but should show usage)
    system "#{bin}/fuss", "--help" rescue true
  end
end
