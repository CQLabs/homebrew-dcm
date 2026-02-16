class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.2/dcm-macos-x64-release.zip"
    sha256 "45a1ab3c15756aededf6c8a849b1cdebb2f6bc5c2b3c50e181b81c9c54baad70"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.2/dcm-macos-arm-release.zip"
    sha256 "8056bbf941036ddf52c1c961ef2df2097ef405da495c373153c70de42b52a837"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.2/dcm-linux-x64-release.zip"
    sha256 "993bc1e97da4fd16c90015009ba171a5a4454bc4d4fd979494e6fa2126772355"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.2/dcm-linux-arm-release.zip"
    sha256 "2cdf8ec921a0fd55b47c17880ef4e1569f58a72f86a751abe133b145414754c2"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
