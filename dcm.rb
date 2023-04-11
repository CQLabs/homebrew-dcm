class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.3.1/dcm-macos-x64-release.zip"
    sha256 "6b7f2cd27ebf5881463b565121443687d1c6dd108cd5ceafb04901f24e0d6b77"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.3.1/dcm-macos-arm-release.zip"
    sha256 "fe39d89e9c3947512c9d704b4a7b5e0b6fae135019ccfbe1ce5557cf35f4e82e"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.3.1/dcm-linux-x64-release.zip"
    sha256 "fe31e2624dc014e8bdb9cb550a128bbfe3e9b45a1afe7f9f7d3a269a1baaf752"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
