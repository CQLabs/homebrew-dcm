class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.2/dcm-macos-x64-release.zip"
    sha256 "64a097a2dcca5e3771ea0d9275c787d4564746d4b53a26c621e6b2f937a79dcb"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.2/dcm-macos-arm-release.zip"
    sha256 "55a15defa84a1d59423863fbf4b12ebcb27762c16eedc67180d81dbb4910862b"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.2/dcm-linux-x64-release.zip"
    sha256 "229d3722fa805d8580d8b72c0481a57278df939edf76f93078b9db50f41f4d9a"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
