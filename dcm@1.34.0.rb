class DcmAT1340 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.0/dcm-macos-x64-release.zip"
    sha256 "677caf5e4971ae21ffa9f05abe6fbf6980c29d5224e8fe03619c80ec87e96cc8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.0/dcm-macos-arm-release.zip"
    sha256 "20ce34547b03bdaa9415245c7e9b8194a027ae1855ef2f777b802d7f7cb40e43"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.0/dcm-linux-x64-release.zip"
    sha256 "57b9577bc66da64b304798fdea740f25051519eaeba66d760a07d7bebce15680"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.0/dcm-linux-arm-release.zip"
    sha256 "c8d9ef91aeb62a8717d2e50d79af6378f4ec86ba428474fce54a41965e627873"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
