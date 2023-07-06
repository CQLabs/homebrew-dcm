class DcmAT17 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.7.0/dcm-macos-x64-release.zip"
    sha256 "06ea2baf921eda10551dbd75227be771903b328f00cf2c4fd5796be094f2e73d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.7.0/dcm-macos-arm-release.zip"
    sha256 "ffae59c91ace3903c93743ff7dff8410e1cad3c0ac2fc077e71915eb610b78ae"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.7.0/dcm-linux-x64-release.zip"
    sha256 "ecd75b8afcc0d49dafce0771ff3666dbef8740916ca015db29ff77fdd62c5e4c"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
