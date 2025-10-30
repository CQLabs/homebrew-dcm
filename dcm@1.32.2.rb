class DcmAT1322 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.2/dcm-macos-x64-release.zip"
    sha256 "f21cc676c12c8e0f52dae42b808cfd00ffca4a9cfc7a63f561f90fcf6e75782c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.2/dcm-macos-arm-release.zip"
    sha256 "8d31a6e47042722560ea8c33ec6c1c2df4be9ae7c7f92a41b4f57d1fa111613c"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.2/dcm-linux-x64-release.zip"
    sha256 "a95caa16eeb1f8fc689bcbaa6ab65049c90a0920dc845180c3a2d6a4bbab2ba4"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.2/dcm-linux-arm-release.zip"
    sha256 "03e00af9fbd6a7e445cb79180fc539f6e92f41e8814fc05027863a57e32b036d"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
