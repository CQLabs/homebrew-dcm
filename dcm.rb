class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.5.1/dcm-macos-x64-release.zip"
    sha256 "45c4665cf004d24538878544379e69f25de82b73039fbb3d121f6aa439acfdd2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.5.1/dcm-macos-arm-release.zip"
    sha256 "792144e859887e871e6a5c6238f642b58266d24d94220fdd2faddd9255f532fb"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.5.1/dcm-linux-x64-release.zip"
    sha256 "1a1977930ef36fd4602f418041beef832af66d2ec0886b3d7c85663f953a2fa4"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
