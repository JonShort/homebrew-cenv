class Cenv < Formula
  desc "Environment variable file changer"
  homepage "https://github.com/JonShort/cenv"
  url "https://github.com/JonShort/cenv/releases/latest/download/cenv-macos-x86_64.tar.gz"
  version "2.0.0"
  sha256 "b825e164265e4c6ed60e6b49225cc6d3aac1169d5d9cb028cf02964a730f8d1f"
  license "MIT"
  head "https://github.com/JonShort/cenv.git", branch: "main"

  def install
    bin.install "cenv"
  end

  test do
    assert_match "Problem reading .env file: Unable to read .env file", `#{bin}/cenv`.chomp
  end
end
