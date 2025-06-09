class DcmAT1291 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.29.1/dcm-macos-x64-release.zip"
    sha256 "4769536a9abd6da6d51a49bc4a87be83d318065ea2a1ca4ca68dfd054ecee525"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.29.1/dcm-macos-arm-release.zip"
    sha256 "6a626087f0f12c2cb5a76d1f7507c4c1f58bf65fff230fd71ac042088fc49b71"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.29.1/dcm-linux-x64-release.zip"
    sha256 "72833ff6627449bb4fd31e18828177bb6f7f20dc2dea1ac0a326e419a6330207"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
