class DcmAT1140 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.14.0/dcm-macos-x64-release.zip"
    sha256 "bf620f9cc5e337d4c8613e6eaeb3d26055cb67c739e47c7d0edfa8a90cadc7d7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.14.0/dcm-macos-arm-release.zip"
    sha256 "c9843488151a2f47b4a8cc84e4ea0da4a859fb5aab56f6b64499fd697478f1b4"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.14.0/dcm-linux-x64-release.zip"
    sha256 "7f61257525c8bb1e9ef18788bff91ddd990fb7ed1cfff6d3b5cae8630a8450de"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
