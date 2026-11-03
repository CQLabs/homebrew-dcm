class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.4/dcm-macos-x64-release.zip"
    sha256 "60db06c895ee2940fe0051b08f1be7d112e3ecef8a9228f0ff15601327a633ef"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.4/dcm-macos-arm-release.zip"
    sha256 "3e70c1f3a5e825211e547c2a413695bf7ac25ec8ab645731933ebc62be3e9c4d"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.4/dcm-linux-x64-release.zip"
    sha256 "c14d540ce0940b3f5935773f77852a2395b877ee36744558e953df5102103b0c"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.40.4/dcm-linux-arm-release.zip"
    sha256 "b5081dbf760705d19dc9b49c9198c2c5b3fa2dc63d7b27be2039777b013a6374"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
