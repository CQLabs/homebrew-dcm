class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.4.0/dcm-macos-x64-release.zip"
    sha256 "142297f590f3c20c821a1b7fa7b0a68aafefd64b78896ede9dd0a7145bd2768f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.4.0/dcm-macos-arm-release.zip"
    sha256 "6935d691ba254abc9de96757a85c1cf2487099d02c5128c8a5c54b4ff9017bc0"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.4.0/dcm-linux-x64-release.zip"
    sha256 "b89baf526b72056fdb89ab30b69a2d77f9c1075971219fcff529409f3fbeae1b"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
