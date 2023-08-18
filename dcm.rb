class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.4/dcm-macos-x64-release.zip"
    sha256 "4ef81f0d4495dbb586875a9a3d6ec3f4cb1cc13474b82fe61864352c1308e9f4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.4/dcm-macos-arm-release.zip"
    sha256 "c4bc68828ff49b1d547ab105b750c0f4f0de4a90a02650947b865a6e17882048"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.4/dcm-linux-x64-release.zip"
    sha256 "658118f430ebea285ed7f19bc46d1aef5060e7fcaba3a80ff590c946630fecb1"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
