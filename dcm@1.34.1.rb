class DcmAT1341 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.1/dcm-macos-x64-release.zip"
    sha256 "191e9e673d657ca068bf3a5ca0d98c6e2afa857ed4450914309e0d325e336362"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.1/dcm-macos-arm-release.zip"
    sha256 "614e5158dbb06d9ecaa9efdae7e61d86452f259b433fb5a772a2153af829c744"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.1/dcm-linux-x64-release.zip"
    sha256 "94977d0e0c36e4b57380e1213e81ab807bc2cc4092c82c6811cd90af4b80e3f3"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.1/dcm-linux-arm-release.zip"
    sha256 "9a96a4ace01939ff4014f31a3b2be847e677473f61bd6e52ffe78e519b67ad59"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
