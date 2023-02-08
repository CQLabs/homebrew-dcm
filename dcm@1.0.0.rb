class DcmAT10 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.0.0/dcm-macos-x64-release.zip"
    sha256 "eaf0bfaf592e2c6c520107d7fda2e5677944cf6d1cd1f5ecfc0076280bccb651"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.0.0/dcm-macos-arm-release.zip"
    sha256 "fb1edc1453d12dbf9c2f883a53085fb0123a75d24475a3f2eeb4d2c797d7c718"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.0.0/dcm-linux-x64-release.zip"
    sha256 "e9c932849008a726b650865fb9204bbd9e276d54ed333dbad92dc8d63b0d8796"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
