class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.1/dcm-macos-x64-release.zip"
    sha256 "22d26d4963d6ab180df9358dfa5096456d1f49f0a62ec38559ada62b2a77ff37"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.1/dcm-macos-arm-release.zip"
    sha256 "6778e92d9937dc63778db9e6773803e569b02b9e6e1e7ceaeb6aa3c4acfeec2b"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.1/dcm-linux-x64-release.zip"
    sha256 "2c8aa880a9d48a4e4b9abc58f12965a85676e8f9c9025da767fcc58f3088cf4d"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
