class DcmAT1160 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.16.0/dcm-macos-x64-release.zip"
    sha256 "c92df5dffcc0b9ef9eef99045046581b1428c447117e26dfc2006a0fe9bcba8d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.16.0/dcm-macos-arm-release.zip"
    sha256 "b2cbd409b9cd0193a8eeea9ee20192a49f14f6787cd11e57e4bdcefbb6204c21"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.16.0/dcm-linux-x64-release.zip"
    sha256 "0a569e61fa3d1dc682a91c5b27299647fc71ecbc8e91c00e99e8f6266a948d3f"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
