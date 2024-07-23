class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.20.1/dcm-macos-x64-release.zip"
    sha256 "e9aebc743e1ba10ad34bc77d01234796044ce9f9b1432b1f3ebc521de2a84dbb"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.20.1/dcm-macos-arm-release.zip"
    sha256 "c9167e0107c9d684e9ae47231fb69fa61bf4966ff7742dd922d81c7636ef7a5c"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.20.1/dcm-linux-x64-release.zip"
    sha256 "06149860a779ef452b4acfea956b8943b10527300937992fca398f917fc1ab60"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
