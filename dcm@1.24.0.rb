class DcmAT1240 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.24.0/dcm-macos-x64-release.zip"
    sha256 "411dc64268ff82466334a5dddfc145ecfe9077bc0162698b58017ae1360d712e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.24.0/dcm-macos-arm-release.zip"
    sha256 "1c5818a1bd4ba290e6f853f1cd3273c33798bf3a5a2efa0bf9a3730d71894c8b"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.24.0/dcm-linux-x64-release.zip"
    sha256 "3065f260c3fdb349e9506d18d04350282ac02cc3d996c4f25ce5f6037f123d69"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
