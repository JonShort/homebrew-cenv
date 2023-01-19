class Cenv < Formula
  desc "Environment variable file changer"
  homepage "https://github.com/JonShort/cenv"
  url "https://github.com/JonShort/cenv/releases/latest/download/cenv-macos-x86_64.tar.gz"
  version "1.3.0"
  sha256 "0c0dce82e3aace58a9a70d0c33febc5e1afb926141259d729300c95eda9b4326"
  license "MIT"
  head "https://github.com/JonShort/cenv.git", branch: "main"

  def install
    bin.install "cenv"
  end

  test do
    assert_match "Problem reading .env file: Unable to read .env file", `#{bin}/cenv`.chomp
  end
end
