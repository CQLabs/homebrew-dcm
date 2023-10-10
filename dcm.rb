class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.10.3/dcm-macos-x64-release.zip"
    sha256 "f0dbbd65f7f95956dc0f5a5ef2eeeaa5c0349abacb21e8daef7a0e6d17d52063"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.10.3/dcm-macos-arm-release.zip"
    sha256 "df3808ff77c3379eb01a5ee0cb7b3ef4ecd4449d64ea992bb9bc210fe90335d6"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.10.3/dcm-linux-x64-release.zip"
    sha256 "839a2628e31ebcd3327267f0e75a50246303f23b613a06d2f25c91ed392380e7"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
