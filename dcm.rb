class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.2/dcm-macos-x64-release.zip"
    sha256 "63491e2b4ec933743e7d269e4c1d8c6b63e7c28d223b58ff4a93c2a3e0ca75f5"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.2/dcm-macos-arm-release.zip"
    sha256 "ded22c02fd3581af19757160571a17ca42bbd188fab5724658da16413939b67e"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.2/dcm-linux-x64-release.zip"
    sha256 "648c3b1d5cf9f5d85a9f68e31b6872153d529054809856178c68ff576f23ec8e"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.2/dcm-linux-arm-release.zip"
    sha256 "6bc86549b25fe67c61d4bec32b9185c67fb7aff910d7aed5758646cebae4a24e"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
