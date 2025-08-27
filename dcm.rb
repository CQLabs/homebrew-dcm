class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.3/dcm-macos-x64-release.zip"
    sha256 "c92fa6dc199f6514adb362f4c2edc3388a5c290305e7112424d0d838df52aede"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.3/dcm-macos-arm-release.zip"
    sha256 "a6a63582e8b1db379cd92d99ddca1e06835d39a9f0e0620eb4e9423a8fa0a76e"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.3/dcm-linux-x64-release.zip"
    sha256 "0c03fae9a2b7bd8de12e5b1eafaa9a69af8cd20b29b519eeb52657ae2bb68a68"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.3/dcm-linux-arm-release.zip"
    sha256 "336abb395d2d44580ba8cae0003ebef465385bf32d75e65c78cd7e9fbfe620db"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
