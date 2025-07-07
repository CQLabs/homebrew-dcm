class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.30.0/dcm-macos-x64-release.zip"
    sha256 "06c14bd367b486bac2616e49408cbecc649df8754fe51aea7a2eb6a8f889a915"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.30.0/dcm-macos-arm-release.zip"
    sha256 "b7a3a9be952d7426c5289534932b76a2b8d0e0bb2845102c9874e66a103c09d3"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.30.0/dcm-linux-x64-release.zip"
    sha256 "1564d43ab0c7bb571ed1c399cbe86cbe4382ba3ace99a31cb7eeaf36f3a5cb33"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
