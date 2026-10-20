class DcmAT1400 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.0/dcm-macos-x64-release.zip"
    sha256 "078352fd55f27b9228a3e1dfd12d0d596ab33a70296e272b186e4eb76bb1dcbf"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.0/dcm-macos-arm-release.zip"
    sha256 "9f19fcb5222ec0c28d57d9f6d44da7ca900b70df99d63abcc25c81f44c4a0d60"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.0/dcm-linux-x64-release.zip"
    sha256 "41765ff1796752d53ed02cfc91ab8ccf069a89a807db4229442ae5997d604605"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.0/dcm-linux-arm-release.zip"
    sha256 "5dcf8191c3ae77bb52539001c2ca8a5342dcd73249377f05e9d8fabb38127eb3"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
