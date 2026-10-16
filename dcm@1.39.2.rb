class DcmAT1392 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.2/dcm-macos-x64-release.zip"
    sha256 "1e8e55f9665691507fbf3acdc33975d9fa3969a8e939a367d3ffeadf7887164f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.2/dcm-macos-arm-release.zip"
    sha256 "5b08cd517f4c391a6f766009a2572b2a3a2cd7a1fd1f09469829ab44ac0a6340"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.2/dcm-linux-x64-release.zip"
    sha256 "8d1d5a9948500301018675a5a12abc2201c6a586bd2e4136f95394427ba8d466"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.2/dcm-linux-arm-release.zip"
    sha256 "2b7811dafbceba02384e76416750dac3ba5a18a32ed6ac4cf067184dc2f52773"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
