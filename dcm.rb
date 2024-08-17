class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.21.2/dcm-macos-x64-release.zip"
    sha256 "ee9fdd3dc6683bed114ae4f685a1fb0846f6ea431768a337a0596b8995fdd204"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.21.2/dcm-macos-arm-release.zip"
    sha256 "ce2810d6b9079732816aa2a61e891e31e006521e99bd2f7ed82ca46d854f1530"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.21.2/dcm-linux-x64-release.zip"
    sha256 "65cf49c727676ecaf4a45a12b77d9c6620ba4c05788c4b5a7b69353da7615512"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
