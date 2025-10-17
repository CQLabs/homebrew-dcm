class DcmAT1321 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.1/dcm-macos-x64-release.zip"
    sha256 "4dc8e9705dba2a4b979e4e8a8bd3fd422b078df1b60040d6928777e9549b88f2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.1/dcm-macos-arm-release.zip"
    sha256 "78a879fad3e22bd6cf2d49f896de1fa6503a280d975cd80f7e4f4663baf85259"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.1/dcm-linux-x64-release.zip"
    sha256 "6b47942b5aa9d2819d7516e3480ee9a10f7f01ca51ff3ca52399cba09051cbdb"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.1/dcm-linux-arm-release.zip"
    sha256 "e1854ae625b400eb6708fcf7741fa858cd7fede556fbc95483cd5449f5626e94"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
