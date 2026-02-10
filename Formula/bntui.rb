class Bntui < Formula
  desc "Terminal block explorer for Blocknet privacy blockchain"
  homepage "https://github.com/obselate/bntui"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/obselate/bntui/releases/download/v#{version}/bntui-macos-aarch64"
      sha256 "62d4f0893d87a522571c6896ad6c01e22c4c6d08544bca0a85ba45c5c291d839"
    else
      url "https://github.com/obselate/bntui/releases/download/v#{version}/bntui-macos-x86_64"
      sha256 "e9701bc1d8736a8fa21d76fd27e9b582391e2d37cff2147e64cdb8d36465ed75"
    end
  end

  def install
    bin.install Dir.glob("bntui-macos-*").first => "bntui"
  end

  test do
    assert_match "bntui", shell_output("#{bin}/bntui --version")
  end
end
