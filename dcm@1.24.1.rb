class DcmAT1241 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.24.1/dcm-macos-x64-release.zip"
    sha256 "ba4ffbdd69ca4afd465542c6fee4ed035bd5e7dc87f54a3ad3471ae523011a6c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.24.1/dcm-macos-arm-release.zip"
    sha256 "5e66496ffce75a1ce63b9698e7b0cc813822bf862db155b4ce94d850a934f5f7"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.24.1/dcm-linux-x64-release.zip"
    sha256 "5d17e49e10f337b867d8bc9b0bc9d48ea43b3de6e1d72f5cf3ee3d36fc91ac6f"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
