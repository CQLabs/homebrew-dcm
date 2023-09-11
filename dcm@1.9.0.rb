class DcmAT19 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.9.0/dcm-macos-x64-release.zip"
    sha256 "b4d51f8602841f4b9555808543aac9a4c86e8efa1df523b392287804c18d0324"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.9.0/dcm-macos-arm-release.zip"
    sha256 "2ce9b982bc4fd6cf37ae2cec3f1081ec2ba8d4e41414da9ec3f7b46f16066863"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.9.0/dcm-linux-x64-release.zip"
    sha256 "349f4efaf795efd70b8545b4735c14f6de2b304ab8e52422b2a98f675e1d1578"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
