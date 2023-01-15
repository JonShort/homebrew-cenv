class Cenv < Formula
  desc "Environment variable file changer"
  homepage "https://github.com/JonShort/cenv"
  url "https://github.com/JonShort/cenv/releases/latest/download/cenv-macos-x86_64.tar.gz"
  version "1.2.1"
  sha256 "f475b950e1f2ffeaeef4182138856f1d6965a1c1f4919675e18520dc02a1b75a"
  license "MIT"
  head "https://github.com/JonShort/cenv.git", branch: "main"

  def install
    bin.install "cenv"
  end

  test do
    assert_match "Problem reading .env file: Unable to read .env file", `#{bin}/cenv`.chomp
  end
end
