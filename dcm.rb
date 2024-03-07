class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.15.0/dcm-macos-x64-release.zip"
    sha256 "c97a2ea1d3df7da33272ca5a3b561e7a5236c803e468be825724233fa8ed703e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.15.0/dcm-macos-arm-release.zip"
    sha256 "2d9cbf3e2c12d24aa4cdd2545b8a15ab1bc6b928853893265b780e9aba11a8d7"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.15.0/dcm-linux-x64-release.zip"
    sha256 "89cb132150f38b3035693442073931520177172ba55982824270a66875fe81b4"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
