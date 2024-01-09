class DcmAT1121 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.12.1/dcm-macos-x64-release.zip"
    sha256 "87c3a835a7ec889015f109b4011e9d08603f34d455d0b6f06b67bacc7dc89536"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.12.1/dcm-macos-arm-release.zip"
    sha256 "a610df02e08ea1ba35bbc6dc7ca4123a2ce06d12665bc245cd8ccbcf6dd6ad95"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.12.1/dcm-linux-x64-release.zip"
    sha256 "9b5ca4f263554f32b8cb9f3b61e7c072fde9245ec10949775f3cac84152f2262"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
