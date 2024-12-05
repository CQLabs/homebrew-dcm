class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.25.0/dcm-macos-x64-release.zip"
    sha256 "2098c615462ebeb5af9cc60ff95f8089af35f0fee8cc56913632877c0148d922"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.25.0/dcm-macos-arm-release.zip"
    sha256 "0d06a325ddaa2e3b87d53221259b2e97cec6f2638629023d8ce32c58e4ac90ac"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.25.0/dcm-linux-x64-release.zip"
    sha256 "ecba330732f3b34f385be07d03e39cb8e8449f3b0a09cbab7d4932a62c8872ad"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
