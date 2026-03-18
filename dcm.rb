class Dcm < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.36.0/dcm-macos-x64-release.zip"
    sha256 "086e41f5c529248fcd169601874605fda9f1cbdd733e181fb3bd2fd449068052"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.36.0/dcm-macos-arm-release.zip"
    sha256 "d63319b1247f1cba8558dd8bbb6371c08006718aeda9b5109f9c1462229713ff"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.36.0/dcm-linux-x64-release.zip"
    sha256 "36e2f076cfd5e563479382bd710adafe43f927e259700090428fcef5ad0d21f5"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.36.0/dcm-linux-arm-release.zip"
    sha256 "d7b56cdd0df690ecc77901733fe709d80ed3169b5425dc07737c8b32b499913b"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
