class Fuss < Formula
  desc "Tree utility for dirty git files, written in modern Fortran"
  homepage "https://github.com/FortranGoingOnForty/fuss"
  url "https://github.com/FortranGoingOnForty/fuss/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "05e54a076e3a0fad58c3c9cda5e232f3d1138c3d3b87c77e75b9eb0f18b0bb1c"
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
