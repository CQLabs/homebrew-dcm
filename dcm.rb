class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.15.1/dcm-macos-x64-release.zip"
    sha256 "9eabb269e8774ae00eb454a74d33b971438944487cd9a427cd960dcda1c6dd74"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.15.1/dcm-macos-arm-release.zip"
    sha256 "820f6be4ffc72d1b0f67c6430cefe99196caf6be7a984bc4ac91f048324ba209"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.15.1/dcm-linux-x64-release.zip"
    sha256 "64d8fa2c08638d1ce88621b26ee79dc047e9ea6cf20e583e0e0f38c5f7fa6a4a"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
