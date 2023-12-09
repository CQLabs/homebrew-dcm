class DcmAT1120 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.12.0/dcm-macos-x64-release.zip"
    sha256 "c9062f63c436309341264ccffca342cbbfa318a815de8e23d9157645036f5c22"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.12.0/dcm-macos-arm-release.zip"
    sha256 "6c81fe5ebdc1ea5e2569eb80959def37a094383499ba5e86cc49b157e058ca7a"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.12.0/dcm-linux-x64-release.zip"
    sha256 "9b769ade8013e3381801b8d5cf1f03b851db8bfbe50ed7e0d44cb9d7a3c32341"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
