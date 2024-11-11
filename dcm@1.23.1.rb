class DcmAT1231 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.23.1/dcm-macos-x64-release.zip"
    sha256 "913acb926f712fa3621f58490720c11b626ed74d791f748748bdae455bd43881"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.23.1/dcm-macos-arm-release.zip"
    sha256 "0f5e7f560cc8d1c44f65a8e0dc2386ef6dd10396642f5fd0fde6f4bc56526280"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.23.1/dcm-linux-x64-release.zip"
    sha256 "9c9af623a5fe246a7a445e209f83372d7db40d5fdbbd9ae88c61da8fe5fdc55c"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
