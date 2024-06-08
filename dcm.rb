class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.18.1/dcm-macos-x64-release.zip"
    sha256 "adfd056cec61d2745ae5107ecd3f15dc14d892a14d83f81bbc7715d89b3f81ed"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.18.1/dcm-macos-arm-release.zip"
    sha256 "93ea51430edd09cb7fbb637eab27bb32083ba2785c6e6764bca1dff9c5b0b21f"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.18.1/dcm-linux-x64-release.zip"
    sha256 "9a319453e0e478ac24e7fcc2d15243ddb3483c8a36cbddff64bed12ca5b3286f"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
