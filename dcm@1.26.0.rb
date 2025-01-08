class DcmAT1260 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.26.0/dcm-macos-x64-release.zip"
    sha256 "b88b43378e6d66474f9133e1b3850a9689444126e4149c3d8e8cc0a4a844faff"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.26.0/dcm-macos-arm-release.zip"
    sha256 "baa39cd2c03ffb88eee95380cbef69c9cfd8874c53cb9566736f10af1848d781"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.26.0/dcm-linux-x64-release.zip"
    sha256 "4fb50db02ff5e54bc65078e7e9ff52f86055deeeb5831f9946eed5a92fbc414d"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
