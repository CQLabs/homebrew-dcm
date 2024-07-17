class DcmAT1190 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.19.0/dcm-macos-x64-release.zip"
    sha256 "a454d75e063fc0f6a07ad878d6dfd1042e6cf6ae33a4e28df2089b7b348f0d23"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.19.0/dcm-macos-arm-release.zip"
    sha256 "c08f3b194cb4bc0d32de1a22f569da058c53aa0c4bfc6351936f85766ab32776"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.19.0/dcm-linux-x64-release.zip"
    sha256 "56905be9d69a0089ff3a10e395467eb272674740376b6943405da2aa2dd96041"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
