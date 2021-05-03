class Cenv < Formula
  desc "Environment variable file changer"
  homepage "https://github.com/JonShort/cenv"
  url "https://github.com/JonShort/cenv/releases/latest/download/cenv-macos-x86_64.tar.gz"
  version "0.0.1"
  sha256 "184a76c8c622aa15a601f9a0c806c071570c6d61bb403da2b382fcbf523b59c5"
  license "MIT"
  head "https://github.com/JonShort/cenv.git"

  def install
    bin.install "cenv"
  end

  test do
    assert_match "Problem parsing arguments: Keyword missing", `#{bin}/cenv`.chomp
  end
end
