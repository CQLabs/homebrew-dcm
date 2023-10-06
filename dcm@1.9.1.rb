class DcmAT191 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.9.1/dcm-macos-x64-release.zip"
    sha256 "3e99405e3b3465c4b27102109a45c7fee38568195861bd307e7a2cf6463b7627"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.9.1/dcm-macos-arm-release.zip"
    sha256 "8d168c52dae1db1f78d0be1c5bbf3a1b3f5cf6ae24db9249c9aa6d7d431af327"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.9.1/dcm-linux-x64-release.zip"
    sha256 "0a42252dd88f86951749f5b5f0be550ffd1a989e298c8d09424dfdf355dcde00"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
