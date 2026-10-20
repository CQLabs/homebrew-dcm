class DcmAT1401 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.1/dcm-macos-x64-release.zip"
    sha256 "6632a9af0eaea688573debb907cc674fd2ba4490e51ed53c0a6d44d8ee30dda3"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.1/dcm-macos-arm-release.zip"
    sha256 "b2fa2c1d4977ab5b7b49d189dbb138c2102b6f3d01674178875de980b5cd4edd"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.1/dcm-linux-x64-release.zip"
    sha256 "4aa4962ca7f521ba875f712689578c169733e6c278514527fdd4b8993fe90b20"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.1/dcm-linux-arm-release.zip"
    sha256 "d49e9ec4f15ac4674049fde2bd9f1813b0d611f5e0883f1d155beb8ea2b4314b"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
