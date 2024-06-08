class DcmAT1180 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.18.0/dcm-macos-x64-release.zip"
    sha256 "c949657fec117839ac69befe7cb9a918615721d2dd81b8651014f39577fd8ceb"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.18.0/dcm-macos-arm-release.zip"
    sha256 "f0e583950c709d8a3543d9ed4fec63f7132955990d5c28608702d81edd7279f6"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.18.0/dcm-linux-x64-release.zip"
    sha256 "5b4b0dc853eb99e842768b8cabd41b981adea9d1502cecaad665388ee3345652"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
