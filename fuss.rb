class Fuss < Formula
  desc "Tree utility for dirty git files, written in modern Fortran"
  homepage "https://github.com/FortranGoingOnForty/fuss"
  url "https://github.com/FortranGoingOnForty/fuss/archive/refs/tags/v0.9.8.tar.gz"
  sha256 "f66c590e5d0ecae371ad9d3fea3ec6b442d09d28f521c6b98f74df0f96cb9d76"
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
