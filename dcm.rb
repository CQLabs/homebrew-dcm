class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.1.0/dcm-macos-x64-release.zip"
    sha256 "68ce5475e4ff727b1e13bdbaca7f6627cfda9a30f8697e652fbcf9db9d4467b4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.1.0/dcm-macos-arm-release.zip"
    sha256 "d5c4b65f66d0f1e387a024c91887b66dc6b1bd71decaa66b171a3c65bc8fe408"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.1.0/dcm-linux-x64-release.zip"
    sha256 "73c7a0d16b988ce532172a2c4c0bc2b292f232649ec922ab58f47a3fa9040cdd"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
