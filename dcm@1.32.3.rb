class DcmAT1323 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.3/dcm-macos-x64-release.zip"
    sha256 "777a24cb480a8fe48168686acee7cb8a8f2639c87f6364e92a3847d3d43813d4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.3/dcm-macos-arm-release.zip"
    sha256 "70fae229a42a9fe20fe6ecf4db5766f1fb6e50e85764fbf581aeb0bd2208df56"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.3/dcm-linux-x64-release.zip"
    sha256 "3af82dbbc4f4556ac8c69df530cd2463d6438d30e1d8221b20621fe4ea8a1597"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.3/dcm-linux-arm-release.zip"
    sha256 "7093ef176682895ef0bd8f0cc299a9cd57d82b56ca64eab749907f28245b47d2"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
