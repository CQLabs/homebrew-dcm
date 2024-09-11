class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.22.1/dcm-macos-x64-release.zip"
    sha256 "78cccc8e0da12c4f37ba5e39c36274ea6a7a9297cd711bce5821fa82f69f67f8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.22.1/dcm-macos-arm-release.zip"
    sha256 "7b1c5db221bb4cf2df02266eaf911a5136e86dd2c9189aa5f566c6ac4fc5cab3"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.22.1/dcm-linux-x64-release.zip"
    sha256 "e8ec24d34a13d154a68c0e98e3832343e88fe92bc46bf01bafe7df1adef73528"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
