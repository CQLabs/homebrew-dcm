class DcmAT1220 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.22.0/dcm-macos-x64-release.zip"
    sha256 "9a0da5ece4bb059993ed35038ff549f62f16d3253bd1c162ee3f7844d086b59d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.22.0/dcm-macos-arm-release.zip"
    sha256 "820343c24f2b841f35a1996cafc4aa47b6c6c80ae370af7d7a5f3c56d24250d8"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.22.0/dcm-linux-x64-release.zip"
    sha256 "350a55402c0e5224e3712f891a375bf88bcd72708a0a5d2859c098110b028b9c"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
