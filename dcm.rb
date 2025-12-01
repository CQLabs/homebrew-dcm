class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.3/dcm-macos-x64-release.zip"
    sha256 "47014805d2d16db6292ada4d55072703763c2ca411982d8eb114543690078093"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.3/dcm-macos-arm-release.zip"
    sha256 "d5d1d7bb9d37dd7e23239c3dd7916b3eebf0929c92205009482055f107e145d8"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.3/dcm-linux-x64-release.zip"
    sha256 "61304e6afc5662e411a3dda0f146de35fc6f456bed0ed9c3c7d0982701fc223e"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.3/dcm-linux-arm-release.zip"
    sha256 "e7877b8fa80713906c928d42959e5ac53254f587227118efaef3b8547e6015b6"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
