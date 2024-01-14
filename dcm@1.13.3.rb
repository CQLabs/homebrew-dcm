class DcmAT1133 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.3/dcm-macos-x64-release.zip"
    sha256 "db238f89f5d272963c537e95ca079cc44e251f5fd3b851df78434ae5fc32b04b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.3/dcm-macos-arm-release.zip"
    sha256 "168e214f17c495448d0e2fd2c77be2245823dadde3e1402c74510ae12d9169a5"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.13.3/dcm-linux-x64-release.zip"
    sha256 "57a0c71bcbc6050f60923ebc68ca96fedd1f9688c3c4415553e293012402b913"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
