class SillyEcho < Formula
  desc "It does a thing"
  homepage "https://sillyprograms.com"
  url "https://github.com/Axylos/silly/archive/refs/tags/v0.1.1-rc.8.tar.gz"
  sha256 "f38dafb6b0552b9c9785f418aa7138953a4d9d536a079db86ea294f74957bb79"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "silly-echo", "--root", prefix
    man1.install "man/silly-echo.1"
  end

  test do
    system "true"
  end
end
