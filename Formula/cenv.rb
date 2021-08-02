class Cenv < Formula
  desc "Environment variable file changer"
  homepage "https://github.com/JonShort/cenv"
  url "https://github.com/JonShort/cenv/releases/latest/download/cenv-macos-x86_64.tar.gz"
  version "1.1.0"
  sha256 "ec14474d0f90d05ccf36111281497a82e6038ec44035a405a691370cc81a9f03"
  license "MIT"
  head "https://github.com/JonShort/cenv.git"

  def install
    bin.install "cenv"
  end

  test do
    assert_match "Problem reading .env file: Unable to read .env file", `#{bin}/cenv`.chomp
  end
end
