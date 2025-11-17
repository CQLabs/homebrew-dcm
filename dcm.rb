class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.0/dcm-macos-x64-release.zip"
    sha256 "e0c33c0343c3dd34fa129a46d5505bc424608b4c2603cc0719fdea35f6bb57f0"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.0/dcm-macos-arm-release.zip"
    sha256 "1fface8dc72f27da50f9cb631cc46e44a3876e3a322ecceaa20318b441a6fc81"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.0/dcm-linux-x64-release.zip"
    sha256 "7a8060c6423a362279631663888712157db06510be776fdcf428d6bef25124f3"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.33.0/dcm-linux-arm-release.zip"
    sha256 "f792bfa0c1dd8946a04e7a12044289537b9a1ccf208d92fcfd7c07ebfa4d5e22"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
