class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.1/dcm-macos-x64-release.zip"
    sha256 "3153dd96c60f0f25662ba52acd88537c53ccee7c9f179911885aa79c21bb72c2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.1/dcm-macos-arm-release.zip"
    sha256 "38ad6085e741c0fb1646b9057c4c2e2b627442e063d3837924dd8ed4bb9e0133"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.1/dcm-linux-x64-release.zip"
    sha256 "a7a3033f16e03694db866d627865d0baf4befb04993f2c1111757f9613f02c62"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.39.1/dcm-linux-arm-release.zip"
    sha256 "0cab9675ea5435817772176bf744b96358ec0f44f713853910f22538aec2e2c4"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
