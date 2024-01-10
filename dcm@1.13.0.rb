class DcmAT1130 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.0/dcm-macos-x64-release.zip"
    sha256 "ad03f80f50805e4f905e181a8b62fe9dd6046beaa69be64ed53a3ceaa71cbbb0"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.0/dcm-macos-arm-release.zip"
    sha256 "443442f28e8dac909f5e67de8bb0a1a2deb62693331820b445f037822c20e65f"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.0/dcm-linux-x64-release.zip"
    sha256 "1aee265748d79b583f5ea375462d83b5c4b83cc86927d216b9800caa28097bfd"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
