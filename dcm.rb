class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.27.0/dcm-macos-x64-release.zip"
    sha256 "b4fd6a6058ad95bc72ea8a951d15643c240a0ce1d8b030eb1f27f4fbb6691c57"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.27.0/dcm-macos-arm-release.zip"
    sha256 "ee27f3452d413e7a7958cba5c9b8463f82acd2c6697073fdc750d73aa71f9508"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.27.0/dcm-linux-x64-release.zip"
    sha256 "7a7c57ecd6cc6252894013e95859b18eb5350754417d5641fec8cca1a4054531"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
