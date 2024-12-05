class DcmAT1242 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.24.2/dcm-macos-x64-release.zip"
    sha256 "3642d8d173ef45ffe6d2830eed42c3003300db24bc96d362ed0f0307a24f6c23"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.24.2/dcm-macos-arm-release.zip"
    sha256 "6e95c798203c98a1251b9ca55dff03f4f14f5481230ca2960dc9ebdf3436edc1"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.24.2/dcm-linux-x64-release.zip"
    sha256 "66a031f4cb0fd8af7e64f029c62b43843311981bda7b9c5e620b3ee385b70a41"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
