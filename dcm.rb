class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.4.1/dcm-macos-x64-release.zip"
    sha256 "b6b55bda7ce68ca3725cd7cbf60ba84ffdde69342e019f722a366d82f2af3bcc"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.4.1/dcm-macos-arm-release.zip"
    sha256 "5ad4a7f95b7a7d1acf29c4a96c4feb0ecaf497e186d5759ac7644f3441dccd1c"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.4.1/dcm-linux-x64-release.zip"
    sha256 "cb5d5d9fb6b57445761d452e8c19d409e4c502d31aa668cc3bf6bc0e612d796f"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
