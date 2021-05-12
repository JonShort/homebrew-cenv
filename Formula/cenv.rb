class Cenv < Formula
  desc "Environment variable file changer"
  homepage "https://github.com/JonShort/cenv"
  url "https://github.com/JonShort/cenv/releases/latest/download/cenv-macos-x86_64.tar.gz"
  version "1.0.0"
  sha256 "5b98e1f814074dc31159d2c2abf3c0134b428af0da34963f9466a9ad391004c7"
  license "MIT"
  head "https://github.com/JonShort/cenv.git"

  def install
    bin.install "cenv"
  end

  test do
    assert_match "Problem parsing arguments: Keyword missing", `#{bin}/cenv`.chomp
  end
end
