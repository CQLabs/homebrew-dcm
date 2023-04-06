class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.3.0/dcm-macos-x64-release.zip"
    sha256 "bb95813be8c871cc0114e74ed27368bda8a1955aac2a3045ebd422fa9e27b89c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.3.0/dcm-macos-arm-release.zip"
    sha256 "c139341f247964ae7e128a7ae443548fd5909d32c5a077c29fc4411d0777f5a4"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.3.0/dcm-linux-x64-release.zip"
    sha256 "93feba892cd960f7229777a383b68ab3194503140aeccdbd7342d2ca3856dc9c"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
