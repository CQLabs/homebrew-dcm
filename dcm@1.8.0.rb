class DcmAT18 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.0/dcm-macos-x64-release.zip"
    sha256 "46dfa687e9568f9fe36c01e625acf1a3e078b8a50f3b5259013a88df5cd4c8cd"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.0/dcm-macos-arm-release.zip"
    sha256 "121e497d2191f14a714981b0d5935fe412b3e357c298089f39070fab8b40421d"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.0/dcm-linux-x64-release.zip"
    sha256 "78f0772b8f10ebfce9565e21e1aac346a85f86303f1332d01178c17ee66f8f43"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
