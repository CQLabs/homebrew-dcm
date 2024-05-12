class DcmAT1170 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.0/dcm-macos-x64-release.zip"
    sha256 "affe45bb259f0cb373e042e6dae0d87ee17bec9898e99b01037511df24f94e32"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.0/dcm-macos-arm-release.zip"
    sha256 "3684db21a6a9486c0d3af2e4932af4238d950bc8ad09e02186ca010b598b0a45"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.0/dcm-linux-x64-release.zip"
    sha256 "29dec4d30346d6089fb1174d486e4dbcaa0e1d092a2160f05f72685d46d159a8"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
