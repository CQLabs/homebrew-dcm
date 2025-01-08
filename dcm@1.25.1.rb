class DcmAT1251 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.25.1/dcm-macos-x64-release.zip"
    sha256 "5cb0d717e3ef7f693de3ffcc955ec36999961a81d2fd82d1d41928850cc1273f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.25.1/dcm-macos-arm-release.zip"
    sha256 "2ae07f47c6293ed084129a363b435e0de8822e12a8c99fc91d708640fcae3800"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.25.1/dcm-linux-x64-release.zip"
    sha256 "a22bd3656683ebaeb13818201ed0dd9bd044bd6d2f85a5cc61dbdb12c7fcee86"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
