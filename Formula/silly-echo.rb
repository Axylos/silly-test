class SillyEcho < Formula
  desc "It does a thing"
  homepage "https://draketalley.com"
  url "https://github.com/Axylos/silly/archive/refs/tags/v0.1.1-rc.8.tar.gz"
  version "0.1.1.-beta"
  sha256 "f38dafb6b0552b9c9785f418aa7138953a4d9d536a079db86ea294f74957bb79"
  license "MIT"

  depends_on "rust" => :build

  bottle do
    root_url "https://github.com/Axylos/silly/releases/download/v0.1.1-rc.8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7543fc01bd554435fb65d1eff71963e41d0bd08d3c197b4806ccdef980d8a812"
  end

  def install
    system "cargo", "install", "--path", "silly-echo", "--root", prefix
    man1.install "man/silly-echo.1"
  end

  test do
    system "true"
  end
end
