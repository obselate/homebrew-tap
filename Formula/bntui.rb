class Bntui < Formula
  desc "Terminal block explorer for Blocknet privacy blockchain"
  homepage "https://github.com/obselate/bntui"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/obselate/bntui/releases/download/v#{version}/bntui-macos-aarch64"
      sha256 "0cdb4c36e5c575a40cfb85925ad812fd35d1b9a19a4b00bb389ad8ed68f661ab"
    else
      url "https://github.com/obselate/bntui/releases/download/v#{version}/bntui-macos-x86_64"
      sha256 "a8074f2822f9cf94b24fb18ab82bc778a6d9d626da81782664e22e91b0c18e40"
    end
  end

  def install
    bin.install Dir.glob("bntui-macos-*").first => "bntui"
  end

  test do
    assert_match "bntui", shell_output("#{bin}/bntui --version")
  end
end
