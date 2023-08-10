class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.1/dcm-macos-x64-release.zip"
    sha256 "ecba10ccdca83f6cf7badf965cc79e0b5668a1900e0a3cb268e90b0548948bfa"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.1/dcm-macos-arm-release.zip"
    sha256 "d63dbc592e95e24084fa3376d9243935cc25e061d58540daa6cfc2a58758adc5"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.1/dcm-linux-x64-release.zip"
    sha256 "6efa03b1e1be5b3d4937bc96e6be5feeb60e3ae7cc13b51e0f0427e2ba6ac537"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
