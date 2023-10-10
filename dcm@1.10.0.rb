class DcmAT1100 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.10.0/dcm-macos-x64-release.zip"
    sha256 "1d408dc8c894956875cd1ba54ff6805b3de9658fbc24a88ef079f845e3dfb11b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.10.0/dcm-macos-arm-release.zip"
    sha256 "64649c89282e66b9235c475cc59d3896511689deda1f8740b13af59498128cb5"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.10.0/dcm-linux-x64-release.zip"
    sha256 "c5e0a72116e34e9d43fec985e7dac2fdd307fdd0f9702fe25fb5bda0997471f8"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
