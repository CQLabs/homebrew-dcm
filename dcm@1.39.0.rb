class DcmAT1390 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.0/dcm-macos-x64-release.zip"
    sha256 "917b9ce9e2c7f2a4dc4661527d0abda409b9d61cb30c172904df25554f0b3914"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.0/dcm-macos-arm-release.zip"
    sha256 "e1878a93e8eca21260a07012c6cf58d337dbb5c0c28a6aeab3e32bb731ee9bf8"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.0/dcm-linux-x64-release.zip"
    sha256 "76388500186bd7cb14e16cdf7cb6e2569de168c76594f4fe1ceebbf6d0e62939"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.0/dcm-linux-arm-release.zip"
    sha256 "f586e79dac0d6826fefea1942b6a78e6d6b2b3d111fff955e29de00f0fff3c93"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
