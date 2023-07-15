class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.7.2/dcm-macos-x64-release.zip"
    sha256 "394e1dc8dd164077a9f7c0495029e301ee562cc0ac4af464fca451df2768e8aa"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.7.2/dcm-macos-arm-release.zip"
    sha256 "29794e5cfb52a0631d1c934df47b5ebeeaea9f0d957ba826e5c19960a4608813"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.7.2/dcm-linux-x64-release.zip"
    sha256 "45447afd0841fb6b78431008af4c0961807069471faa607a6fa2b171cefc3cc2"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
