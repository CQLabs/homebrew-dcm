class DcmAT1382 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.2/dcm-macos-x64-release.zip"
    sha256 "4636976290e07a1e9c106341d3b7125b8cef603c49fea9d5945e5a3a442b72f5"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.2/dcm-macos-arm-release.zip"
    sha256 "f9039d80e5a00862cc3a6762ff562c2394e7338e6ced286a50a483902f06406e"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.2/dcm-linux-x64-release.zip"
    sha256 "a616c3eccccc8369d2516a13d7b887f45344069aa1748632317dbbf39c988de4"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.2/dcm-linux-arm-release.zip"
    sha256 "b6189304eeccadfc547446eaeeaedf65fa4740d94425c8a1a2f241168df64ea4"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
