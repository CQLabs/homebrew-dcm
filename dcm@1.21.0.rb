class DcmAT1210 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.21.0/dcm-macos-x64-release.zip"
    sha256 "b5bc33f30a152144f2af8296edfdd159ef82c907061161dc17fbb448f6a81e67"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.21.0/dcm-macos-arm-release.zip"
    sha256 "c14c394c40fb0b4eb6b401d6dcd91146e4b9c4facc10ca1899face5827913c55"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.21.0/dcm-linux-x64-release.zip"
    sha256 "e58b12e90573fc45a965b680107796d6150795faf1036af0cc2e2894e5218c99"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
