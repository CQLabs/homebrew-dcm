class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.26.1/dcm-macos-x64-release.zip"
    sha256 "1123da6747322958d3d29b15aa361336ceaca497ad3e0df2b943d3e2a3c7bacf"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.26.1/dcm-macos-arm-release.zip"
    sha256 "7a2c0af5e6f1b46f0a88a07ec0322921b5b5723f51581785cf99693d030a4a05"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.26.1/dcm-linux-x64-release.zip"
    sha256 "4212772c5d67de2d9199d8f4c562634b5fb11c3116c70591cab0c5ab193f3b22"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
