class DcmAT1171 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.1/dcm-macos-x64-release.zip"
    sha256 "035f968ce5f252c3dd91d5a07a4046b6249852ff24473c4e52415008a95e01b7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.1/dcm-macos-arm-release.zip"
    sha256 "5ebb41ed57712b0394b6192cbf92ed3c9c1ac118c30fed1e2fb766bf5aba71e5"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.17.1/dcm-linux-x64-release.zip"
    sha256 "34048b7aae3bb54d741b86501e3fabe40a1f9be80095af48e7a6655d4a8f91ef"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
