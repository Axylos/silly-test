class SillyEcho < Formula
  desc "It does a thing"
  homepage "https://draketalley.com"
  version "v0.1.1.alpha.1"
  sha256 "f38dafb6b0552b9c9785f418aa7138953a4d9d536a079db86ea294f74957bb79"
  license "MIT"

  depends_on "rust" => :build
  #if OS.mac?
  #  url "https://github.com/BurntSushi/ripgrep/releases/download/#{version}/ripgrep-#{version}-x86_64-apple-darwin.tar.gz"
  #  sha256 "585c18350cb8d4392461edd6c921e6edd5a97cbfc03b567d7bd440423e118082"
  #elsif OS.linux?
  url "https://github.com/Axylos/silly/archive/refs/tags/#{version}.tar.gz"
  bottle do
    bottle_version  = "v0.1.1.alpha.1"
    root_url "https://github.com/Axylos/silly/releases/download/#{bottle_version}"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f22b1840e49965bd975fcaa0a26686a5982b81ec2eb0423ef5922cda8293685e"
  end

  sha256 "ee4e0751ab108b6da4f47c52da187d5177dc371f0f512a7caaec5434e711c091"
  #end

  def install
    system "cargo", "install", "--path", "silly-echo", "--root", prefix
    man1.install "man/silly-echo.1"
  end

  test do
    system "true"
  end
end
