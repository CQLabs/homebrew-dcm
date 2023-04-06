class DcmAT11 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.1.0/dcm-macos-x64-release.zip"
    sha256 "1f80d207a91bac972b7640598da0ac63f3b2ba26d209d35f546df9300ecefda0"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.1.0/dcm-macos-arm-release.zip"
    sha256 "0233ba18d5042c10a3fa5b78d94308f1bcd54af5ac1a7c05e6862bb8792107e3"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.1.0/dcm-linux-x64-release.zip"
    sha256 "4fb3d7d9f80585380b10f7d29f37c35148eb375ee4c5ee08d94855d75268e247"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
