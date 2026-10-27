class DcmAT1402 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.2/dcm-macos-x64-release.zip"
    sha256 "7e7b516fea9d5427e0a9c0ef241b6042564d8067b48a47b9e9d14aa068f50bf8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.2/dcm-macos-arm-release.zip"
    sha256 "a6c8a568a99fe3722d35c0d5e6f3137ff78c930bff327014a58050a8a6a19229"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.2/dcm-linux-x64-release.zip"
    sha256 "0fcab6e6d921aaa7e89b55d1a4f0a71812ac0b5500525988f3223353f3f5ef9c"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.2/dcm-linux-arm-release.zip"
    sha256 "2c9a7e18292b182e0589d3f5cdeec229e8fdfb6cb59703687e07b1c070613ada"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
