class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.21.1/dcm-macos-x64-release.zip"
    sha256 "29c268979dbfb29b34218db71a9887a0da9df006a0ccdf5503681c90977a7193"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.21.1/dcm-macos-arm-release.zip"
    sha256 "886eccaa65659d29aeacf969828acf1f412ff7a7f0dd51f7af44b83be0a2e505"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.21.1/dcm-linux-x64-release.zip"
    sha256 "2a1e548f1c0e6b6f02a94b67236c4250d0dc06c627a36c4e8c4c1eef0c7da98c"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
