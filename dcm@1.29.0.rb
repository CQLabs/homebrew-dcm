class DcmAT1290 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.29.0/dcm-macos-x64-release.zip"
    sha256 "202e25018e52f267b03ac553b06f3f16e221e6c645a86d01807a78d1a2c710a8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.29.0/dcm-macos-arm-release.zip"
    sha256 "3b97d9940a83b74270d3dbfd6d381f96d2bc88487fbbdb2a4cf98b2683df42e7"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.29.0/dcm-linux-x64-release.zip"
    sha256 "8a4f3ce794cc86e51d82ca1aec24ead5f29a52e0be552655548af3f8fea7cda9"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
