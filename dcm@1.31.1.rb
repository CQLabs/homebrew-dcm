class DcmAT1311 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.1/dcm-macos-x64-release.zip"
    sha256 "5ef1993d064901b63258ce50c628988efa12885baf7dbeed165db704ad624212"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.1/dcm-macos-arm-release.zip"
    sha256 "d1d8734cb988db92b5be429551368a03ca38b1f4fbd66919a4d585553089c4ce"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.1/dcm-linux-x64-release.zip"
    sha256 "454a31a3825bfa75b6d79d6534134ec2fc6bd72e539a63bcea59f82623e9376a"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.31.1/dcm-linux-arm-release.zip"
    sha256 "836ab44c1580c23e97127c284f57a3b5b81177f4b11188896c16d68deec21c92"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
