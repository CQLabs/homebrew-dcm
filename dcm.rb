class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.23.0/dcm-macos-x64-release.zip"
    sha256 "ce43dfdd21254cd60b952620839006b790b269b8f91cc18c046b4268ef71c358"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.23.0/dcm-macos-arm-release.zip"
    sha256 "e05c20825ffcb70cd86940c7da10ab14908b554bc9cc63af534cdd5c0b26ed9a"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.23.0/dcm-linux-x64-release.zip"
    sha256 "a44b1095e363959393ddf2bb4f24b46d2f131e3d8b083dff19b458f71de6a601"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
