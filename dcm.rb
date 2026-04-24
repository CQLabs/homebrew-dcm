class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.37.0/dcm-macos-x64-release.zip"
    sha256 "e56cb99872be7445a4de1d37e5438ca70e3bcd83be7a2b9b385e3538881f8068"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.37.0/dcm-macos-arm-release.zip"
    sha256 "30bede64367d09067093cc57af6ec9496d7717898138ded5cb98a16ac8dd9d93"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.37.0/dcm-linux-x64-release.zip"
    sha256 "477e086d4099c12f21e5ccd83b005d5fb945dd4cac4fd127fd9a08d7649af1cf"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.37.0/dcm-linux-arm-release.zip"
    sha256 "253da2512b149913dfe345bf9a62a79acb2d730f66e71162ba4a92dfc4224b82"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
