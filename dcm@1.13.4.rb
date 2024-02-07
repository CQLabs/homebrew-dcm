class DcmAT1134 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.4/dcm-macos-x64-release.zip"
    sha256 "3ebf12520ad876aa7d56ca1c059c3059d93c8fa8b8e1abcb99219b2b10c53bd8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.4/dcm-macos-arm-release.zip"
    sha256 "d21059882ee4d0bee9486c2eed6d4e05cad176032b4653973b722657762bcd22"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.4/dcm-linux-x64-release.zip"
    sha256 "a8264b8167120e0d27e652ff6aed73ab6fb047997e8fac0db21c54f39e9b4bc9"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
