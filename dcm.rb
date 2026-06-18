class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.0/dcm-macos-x64-release.zip"
    sha256 "b9e87fb3e005d281b22fc6224ddef722f70eb2f3a010618a01c41a63198012aa"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.0/dcm-macos-arm-release.zip"
    sha256 "294ddb4e5f3787d293c97af2cb5c9f52e543cd5477671a59589c279311833aee"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.0/dcm-linux-x64-release.zip"
    sha256 "b240aacf6e8bddedc84d5a45036be8535c87c247c43b04de9ba139b020066ba0"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.0/dcm-linux-arm-release.zip"
    sha256 "e73d8a6c5f682a4d250d7bad53af3a8f1031915386f221cdaa4a1b5094b220e7"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
