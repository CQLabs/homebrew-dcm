class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.4/dcm-macos-x64-release.zip"
    sha256 "72baa3ecfda54fb5037ab193879a17580b2ce3fe7cb519364220178fa60b9f0d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.4/dcm-macos-arm-release.zip"
    sha256 "d50674b94fd7f610935501cf8e0b5bd4b8559b61e4dc25322aa6ef5e498c89e9"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.4/dcm-linux-x64-release.zip"
    sha256 "e3597b3336db6a7262fb3ca9d64553aad0672330966a7bef6677d16559f2703f"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.4/dcm-linux-arm-release.zip"
    sha256 "ca3c5d3c5acd4d969ae9932c5617b7e947faf309db600bfc4beb29c4d775b894"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
