class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.3/dcm-macos-x64-release.zip"
    sha256 "dd9b6ab4878f1c4a6e998e4728ab19492995fd93ba443b9f66fd32932f937102"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.3/dcm-macos-arm-release.zip"
    sha256 "ac27512146dd41be22468637ecb83c40a02822d33f6bfe89ad233f8e3e7a6865"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.3/dcm-linux-x64-release.zip"
    sha256 "af9ee9061070e0387335bde2efad2cf921822a8c697de779997a12762f850949"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.3/dcm-linux-arm-release.zip"
    sha256 "59cfbe8e14891d457b0ba303281b74606ee1a2d2514eb8abf8cf26255bcfcc10"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
