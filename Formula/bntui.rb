class Bntui < Formula
  desc "Terminal block explorer for Blocknet privacy blockchain"
  homepage "https://github.com/obselate/bntui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/obselate/bntui/releases/download/v#{version}/bntui-macos-aarch64"
      sha256 "3af286bef431ca9ccfd16e5116b0e5d868a0bfb83828daf944f0ee2c327206fa"
    else
      url "https://github.com/obselate/bntui/releases/download/v#{version}/bntui-macos-x86_64"
      sha256 "94045a9b004b21545254bb5b36ed25794efb6ff07a7763b53a5b8b91dd96740e"
    end
  end

  def install
    bin.install Dir.glob("bntui-macos-*").first => "bntui"
  end

  test do
    assert_match "bntui", shell_output("#{bin}/bntui --version", 2)
  end
end
