class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.3/dcm-macos-x64-release.zip"
    sha256 "e9fab64d40503287afb7b87905b1fcc5d2962eb0b0237ff0db3161a670bd2333"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.3/dcm-macos-arm-release.zip"
    sha256 "b7885440020e1ff68c6dc42bc9c3669685d7f2c4a7b51944532d2b8ea2b81e34"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.3/dcm-linux-x64-release.zip"
    sha256 "bc53d8c0a52a6edde660f8ae8f6b0443d8a41a83e1632e0c85f8d570934e3324"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.3/dcm-linux-arm-release.zip"
    sha256 "bc71f9f687a4eacc255037a8a43f7cc721325a7151d2f955d0bc77eaacb8f136"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
