class DcmAT1280 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.0/dcm-macos-x64-release.zip"
    sha256 "8a3c4e20c61bd9bd45478309a8c350f56d4a397b6acee1de60ff6586f5f2e905"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.0/dcm-macos-arm-release.zip"
    sha256 "e6dbb161de774b2518c78cbd78af15189d75c4da5347d459fd604ce7de7ad737"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.0/dcm-linux-x64-release.zip"
    sha256 "0a3af4cc8734240a6c0d523907b970aea7688fdb4c1413471cb9ce694cceab2f"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
