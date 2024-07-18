class DcmAT1191 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.19.1/dcm-macos-x64-release.zip"
    sha256 "c2161a27a093f6926ec61bcb3ae8caf4622fddc5f17999275fe492eff9d6b228"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.19.1/dcm-macos-arm-release.zip"
    sha256 "5e5bc569b0ce125e616c5bea63cbeb324dd85af5b940889a3634f2cb5ede3e91"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.19.1/dcm-linux-x64-release.zip"
    sha256 "781a38063d90c693fe5893cc37436d73f4b14af014abe1ead5936a37b55bc52d"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
