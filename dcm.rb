class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.29.2/dcm-macos-x64-release.zip"
    sha256 "191ece07ef7c34b10b68e61a2b6610a588a2526dc17dc3e71f590135fac982d0"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.29.2/dcm-macos-arm-release.zip"
    sha256 "eb2e3a46dd94056b6e11a671bce59134d8a660453ce1dab91b0dc98f9bdbadcb"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.29.2/dcm-linux-x64-release.zip"
    sha256 "002af546a84e599d10645fb90d4ff86256fa49e42e73b0f07600700819ae43a6"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
