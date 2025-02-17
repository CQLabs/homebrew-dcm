class DcmAT1262 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.26.2/dcm-macos-x64-release.zip"
    sha256 "76f6269fb6cc684273e5f942eb87f2fc36909b960fb6cd0fffc91e1919aa3183"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.26.2/dcm-macos-arm-release.zip"
    sha256 "eff0a2deb7aedbfa9b00614b701873898b7f959293a1e1464ffbf491b417154a"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.26.2/dcm-linux-x64-release.zip"
    sha256 "c2c4f85c0c72b78a2ae3cc6b4f6f6f8aa24db36fe0a9c06d03cc04df6f52537a"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
