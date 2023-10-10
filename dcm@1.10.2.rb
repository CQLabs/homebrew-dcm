class DcmAT112 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.10.2/dcm-macos-x64-release.zip"
    sha256 "7d8eafd4d9722d76a9ad406886ccf01ca2924710e67c85037f6a4c5f7322e054"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.10.2/dcm-macos-arm-release.zip"
    sha256 "fcd0488c246ecfeddf80227818dd814a2ae94bb70c1833960fd31b2b001bc12b"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.10.2/dcm-linux-x64-release.zip"
    sha256 "76cd7c0c9d37c331ed9be441746eb1a99080c95fe23f82426ff4ed8fa72013da"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
