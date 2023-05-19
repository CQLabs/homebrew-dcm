class DcmAT15 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.5.0/dcm-macos-x64-release.zip"
    sha256 "e6d4697c38b54d94936a69472fdbc7f5a13e2775d65cbc5500615d25dcdcba61"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.5.0/dcm-macos-arm-release.zip"
    sha256 "9891a8d97adffbf80dc67947ae72e3588dabba0d3e050d14be6b58f818f210f1"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.5.0/dcm-linux-x64-release.zip"
    sha256 "fd3dd3607a5c65dd268ca9200db2cad8a024a1306dc55a712526c252fd3f8d93"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
