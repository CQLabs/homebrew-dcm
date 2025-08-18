class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.0/dcm-macos-x64-release.zip"
    sha256 "c4c0d60ccca3a37939dfef42bfefa9057c3c90f6d075032fdede0be0f7459d0d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.0/dcm-macos-arm-release.zip"
    sha256 "b3f98d27d1b5a127f509e1108e3c7928551830f96ef94578e1b893e0bb096cb6"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.0/dcm-linux-x64-release.zip"
    sha256 "4be9d760fd367bd9304f1b3745a75cac36d835565fe92a779765033da26f3d72"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.0/dcm-linux-arm-release.zip"
    sha256 "6fd07178f21d56ad9833849afbca90e527bdf03bc9e9ba5af1379c5f777c3b70"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
