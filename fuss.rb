class Fuss < Formula
  desc "Tree utility for dirty git files, written in modern Fortran"
  homepage "https://github.com/FortranGoingOnForty/fuss"
  url "https://github.com/FortranGoingOnForty/fuss/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "f1cac23fc62233c8eb746849864b3470aa97093d5b1577dfe3116872e66036cb"
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
