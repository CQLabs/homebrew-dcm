class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.20.0/dcm-macos-x64-release.zip"
    sha256 "97949b7eaa96fe0ea152c554e2333581a7d696e34aef0818fbbda495baae8b9a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.20.0/dcm-macos-arm-release.zip"
    sha256 "38b66c78ef5cb3f976fbade0551bef435b4c4cb2bde2efd60808daa6aa493fab"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.20.0/dcm-linux-x64-release.zip"
    sha256 "a05c598536a7b9e422d6ea575bcbc7bb6e6ce99ae29e3322142a6841b586d00b"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
