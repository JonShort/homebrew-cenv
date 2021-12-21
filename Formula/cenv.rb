class Cenv < Formula
  desc "Environment variable file changer"
  homepage "https://github.com/JonShort/cenv"
  url "https://github.com/JonShort/cenv/releases/latest/download/cenv-macos-x86_64.tar.gz"
  version "1.2.0"
  sha256 "c0300126740c01eae72790d1aec98ff4c39f879c162c6b04cf9fe080110177d4"
  license "MIT"
  head "https://github.com/JonShort/cenv.git", branch: "main"

  def install
    bin.install "cenv"
  end

  test do
    assert_match "Problem reading .env file: Unable to read .env file", `#{bin}/cenv`.chomp
  end
end
