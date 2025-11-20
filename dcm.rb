class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.1/dcm-macos-x64-release.zip"
    sha256 "f10bee3c3a8b62b822b462e20120fb66dc8ba433786cac5f56f044648db59c35"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.1/dcm-macos-arm-release.zip"
    sha256 "88abaeb833ec3d46baae0e0490e18f13e692ed513eb66793e338d048dee0efad"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.1/dcm-linux-x64-release.zip"
    sha256 "3d763ed22c2086874a6321c222afed31e571e5d3e93ac8a95a0b872b9c604d9e"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.1/dcm-linux-arm-release.zip"
    sha256 "3c2967411ce1bb308f8c75c876d88134e83d1d917843aa093f6df6fb50e88816"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
