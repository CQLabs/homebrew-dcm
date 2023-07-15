class DcmAT171 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.7.1/dcm-macos-x64-release.zip"
    sha256 "1a527b3535c274f4cdc29fb70ca28875278ee66e4486a2a03cdedc6058b863bd"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.7.1/dcm-macos-arm-release.zip"
    sha256 "97028f6468d596adf87bd5b925c4f78ea10458b14963530b568e9b0e077836cf"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.7.1/dcm-linux-x64-release.zip"
    sha256 "a5a7b8aed01656764d4491adb293eb6ccdc881840bbd8aa25f45b0c5aa5f8747"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
