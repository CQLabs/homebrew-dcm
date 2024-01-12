class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.2/dcm-macos-x64-release.zip"
    sha256 "7f4f61f087e2637591c52a4dad8915b732baa874ca6510a006d14d289b688a67"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.2/dcm-macos-arm-release.zip"
    sha256 "4c3a05efb8ca290df9ba2e83995a90e4b35dc3b7a00eab74e4c0e60239790389"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.2/dcm-linux-x64-release.zip"
    sha256 "e1d87c773ab5ae97b4a4ee68707c8ba04c0c85c355d047a66244347945b10e54"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
