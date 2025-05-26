class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.3/dcm-macos-x64-release.zip"
    sha256 "dd544706163684167c3ecaf49899413b8c04cfb3d6b08786468b01fd9134170b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.3/dcm-macos-arm-release.zip"
    sha256 "eb004bc70ec084f3c0fa69e031a09745d87b2c1b8547a2affab04e9567645400"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.28.3/dcm-linux-x64-release.zip"
    sha256 "83dc860842aa183baa13fc191c273e8f45210008e6871c0801c7e223cf5d6380"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
