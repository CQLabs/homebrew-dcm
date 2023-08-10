class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.1/dcm-macos-x64-release.zip"
    sha256 "b25ec64575b3d34632267ed635d3f3e5184623a70594ae3c56963cc2aa3bf7af"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.1/dcm-macos-arm-release.zip"
    sha256 "c8825ce56498d7a93531bed62b25137b0baa5de9f9eb30f683252c1478b2e7bc"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.1/dcm-linux-x64-release.zip"
    sha256 "fbceeaa7dbbd9c12d8079c21ecf0301c60ac7af1f89a372eab04bb56eb704191"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
