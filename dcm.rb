class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.2/dcm-macos-x64-release.zip"
    sha256 "8f2d37c8f003cc0f99e26d39cdf768a26296081f2a52f84c0e4ce90db3228a06"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.2/dcm-macos-arm-release.zip"
    sha256 "8e52d9473a5f271c4ead09aee460d2f99a1e6ee00e66bcbfda165d646976ab3a"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.2/dcm-linux-x64-release.zip"
    sha256 "c127b2af00fa14029a319aa66ed2ccdf8c2cab52f10e0986ec168348c899d493"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
