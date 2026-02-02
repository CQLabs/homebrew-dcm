class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.1/dcm-macos-x64-release.zip"
    sha256 "9dfa65a776960d5d583dcca9e003cfb4a35d690850785d274e0e06c776ae1777"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.1/dcm-macos-arm-release.zip"
    sha256 "b6f04a6f68828ece9be3837a6a8eb1290cd8ca986a97f284f4af6de7eb02993e"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.1/dcm-linux-x64-release.zip"
    sha256 "27667459466861bc257baad381715e227775b5c4996e15132120f3b11cef0c55"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.1/dcm-linux-arm-release.zip"
    sha256 "71adab6e3b5d2e183657511e8547ca02229c1829ce82676cff43ae577644388c"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
