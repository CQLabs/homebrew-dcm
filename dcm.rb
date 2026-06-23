class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.1/dcm-macos-x64-release.zip"
    sha256 "27182502dfc6dab9181be9f0d1b3669468afb127cd2bcba09d534693e96cbe9a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.1/dcm-macos-arm-release.zip"
    sha256 "a08e0e5e881ce04885e787b24aa942597188950d5e53c66f45c2293b70758c5b"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.1/dcm-linux-x64-release.zip"
    sha256 "27ea2b517a393b70f1abd9111b02b557854a89abcdfe756a4bded3cea3cff0aa"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.38.1/dcm-linux-arm-release.zip"
    sha256 "0934337f9838fd2c74615070a8b1c0cb80f1b8261080a6e03aa71c16642d06e6"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
