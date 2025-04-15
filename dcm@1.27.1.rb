class DcmAT1271 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.27.1/dcm-macos-x64-release.zip"
    sha256 "a07e14f979e122d4a480cf7e6192d6212b562a151ff90d4fa8fbdaa990101302"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.27.1/dcm-macos-arm-release.zip"
    sha256 "4165fb03efd8d031b7f3bc2be0f8a5c27453af374782568d4fc51dd3d5a4f1d3"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.27.1/dcm-linux-x64-release.zip"
    sha256 "5474ee61a1f170d8907df8b3bfdbcfc8bd02e44172d8d2c66ae1145606cb6e17"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
