class DcmAT1173 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.3/dcm-macos-x64-release.zip"
    sha256 "8dcfb63bff00df0dc64ea2c63fb9bda553619102c1e71b9cbcda9a99ea23be40"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.3/dcm-macos-arm-release.zip"
    sha256 "91602523d37156b4cb41200c36837bb0fa83460f48c857c25d913a9a0cc0028b"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.3/dcm-linux-x64-release.zip"
    sha256 "bef93d28cd189bd9c3285bc941baf995d67cd7ad44e367830dcfef6bde58a970"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
