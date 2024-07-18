class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.19.2/dcm-macos-x64-release.zip"
    sha256 "7e68448bed19dbfbb14ea1eef5e015ca360f9e442a701beb3455b710ba124433"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.19.2/dcm-macos-arm-release.zip"
    sha256 "3c60eb8ea7a38b0d20b8e9accc8b829cca9f120c54e95132980fb9064bfccbc7"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.19.2/dcm-linux-x64-release.zip"
    sha256 "b4d08ed6f77b20c39b3b7feecf05efa0f3329b170fd363970c2b11069d83a383"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
