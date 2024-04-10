class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.16.2/dcm-macos-x64-release.zip"
    sha256 "55706ead284fbd129d32d0271ed883e8d81bb8d7b7e93a2c0e4ee4541ac84ed6"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.16.2/dcm-macos-arm-release.zip"
    sha256 "044ddea209443fdd61dec7669e0d61d49edf9b257097816fc87b9c8797b3622b"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.16.2/dcm-linux-x64-release.zip"
    sha256 "39384f74d5556f6c016ef9164dda8a2b99dcaf3ef51ce50ddb133542a3e64ff8"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
