class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.16.1/dcm-macos-x64-release.zip"
    sha256 "41c441a4c2bc5205ce890f89cccab1acd0a501f861a11659b93235b2a95d0863"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.16.1/dcm-macos-arm-release.zip"
    sha256 "4cc98e5af9f0479bfa4f34ccdb21caeb6e29ce3a6ba3a1370bfec8e6466032cb"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.16.1/dcm-linux-x64-release.zip"
    sha256 "3450996239943a26095f423032b29516fe6117d38607751a3347a418dd3602ce"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
