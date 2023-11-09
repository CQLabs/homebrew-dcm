class DcmAT1110 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.11.0/dcm-macos-x64-release.zip"
    sha256 "8d73f3f57d764d1c19b3c797718174c9188ebc64f994b5a882903340fc8ba640"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.11.0/dcm-macos-arm-release.zip"
    sha256 "b9c1b58a86d9324dd52d5cc6c8ed132d2ce31b093663964a3a172c44eb3cbf76"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.11.0/dcm-linux-x64-release.zip"
    sha256 "965bceb8ee4c08f15cb154ffd7b05e262dd8224b007628def0eea4b5d8ab583a"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
