class DcmAT1131 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.1/dcm-macos-x64-release.zip"
    sha256 "5cc2994d623ab24414eae5d16b15cbc03e9c4ea8ac7c1c9ecd49836d3d03223b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.1/dcm-macos-arm-release.zip"
    sha256 "31e7256d9de44febc0b90e54dad799363da0cf594fd0bd1da5c331876f9a2b7c"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.1/dcm-linux-x64-release.zip"
    sha256 "c24727601b89c57a6f524271a5a2c2e17168ba2131f744588d963ee85d95f953"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
