class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.2/dcm-macos-x64-release.zip"
    sha256 "3861f7fff4e43fa36f640cac02c4edb107b279e3efa812a0546209e3b945f7d4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.2/dcm-macos-arm-release.zip"
    sha256 "9f798ba9100fdbd72cab1c5822ba69c9196046f703d8a983faf7660b6b45e92f"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.2/dcm-linux-x64-release.zip"
    sha256 "a26c0a18a210ca14c17a8859c21d9d3344ef5ca61d7da8172e924f1213575d16"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.34.2/dcm-linux-arm-release.zip"
    sha256 "8d21675fc5c4eedfa74727c6ef13711b2c160dfb4de6057ea617c9240e63852a"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
