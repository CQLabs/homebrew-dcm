class DcmAT161 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.6.1/dcm-macos-x64-release.zip"
    sha256 "6fee97ccd4fefe62e3b2675448e3e1ac633447e34891a4c5a8cf7695ecf7b94c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.6.1/dcm-macos-arm-release.zip"
    sha256 "7adbeb8d2a7dab3d7d927f3477a132be31206e7dbd4d4fb123d2bb995bc61704"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.6.1/dcm-linux-x64-release.zip"
    sha256 "2ec65fb01226f5ee7743880ead00b5a220e0748bec7acbe2db650920af32332c"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
