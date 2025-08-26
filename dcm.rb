class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.1/dcm-macos-x64-release.zip"
    sha256 "1bbf06212c4b118b1a1cd074d7289a75a7f3455cefa0457bbe3f2df25af97693"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.1/dcm-macos-arm-release.zip"
    sha256 "432be67595ab157c41ccb083924778a0ce12ac4915d370e717e31d9dba55bed6"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.1/dcm-linux-x64-release.zip"
    sha256 "95abd36f5432fd12efc045f876e9021ea5420eebe41b760d740fafaf9228b705"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.1/dcm-linux-arm-release.zip"
    sha256 "3d7a1ce31dc6e79db0c74f619993284eca13ce5bb787add3f23badf89d3aaa27"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
