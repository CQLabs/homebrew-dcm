class DcmAT1301 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.30.1/dcm-macos-x64-release.zip"
    sha256 "86bd8238103ff6bbc48f7e719e175a386f63dc51be3794043f590a2b358ace20"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.30.1/dcm-macos-arm-release.zip"
    sha256 "ae0427e239247fc645e20ab74439a50477eec40e8e342a6d3c94f5956a4b2530"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.30.1/dcm-linux-x64-release.zip"
    sha256 "0adbb7f48af0cae99d87720effc562c18826924d33ea1f04b13dae10ce80e661"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
