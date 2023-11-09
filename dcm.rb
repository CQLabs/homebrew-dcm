class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.11.1/dcm-macos-x64-release.zip"
    sha256 "ea43ca0424cb399711c1af2c1ecba87bf281d1539197458d44df34e158d691c7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.11.1/dcm-macos-arm-release.zip"
    sha256 "9c00e7adfd5a6e0602227bbe96ce614980abbee6c2cc9e9beca1503ced871388"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.11.1/dcm-linux-x64-release.zip"
    sha256 "a3429ad288b38cbd3da169f924914b23652b5f076a16da83492cc0f7be16e842"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
