class DcmAT16 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.6.0/dcm-macos-x64-release.zip"
    sha256 "4a0953c18c5f39f91699d62c9009443d82a83cd6958d1a2c81ac1fef64e33675"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.6.0/dcm-macos-arm-release.zip"
    sha256 "a968051a0439bff018db2f0301fa8fc6fa81c914bedb84d21c76fe17ef24730b"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.6.0/dcm-linux-x64-release.zip"
    sha256 "76894acbf8e374f71bc2394ac025530e0f41241c895e99ae53b84d4ae2a255ef"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
