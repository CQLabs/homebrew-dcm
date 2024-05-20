class DcmAT1172 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.2/dcm-macos-x64-release.zip"
    sha256 "968fe6f0ca5b1bf92778346dfa2c246fd9d37ecd3bddb1afde44d85d11c40e8b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.2/dcm-macos-arm-release.zip"
    sha256 "89631d8fbb7e66bf1f0b65a39446b2999d02b07df6085335e8179bf398fbdb2e"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.2/dcm-linux-x64-release.zip"
    sha256 "15c7b81f40ec11767fa89b5838b1a5092ab4cfb5255abf6de1482939f4fa544c"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
