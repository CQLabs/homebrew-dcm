class DcmAT1350 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.0/dcm-macos-x64-release.zip"
    sha256 "37ba2b2978e722cc3bd9d79f6ddf653364264dfeb9ab9a84816a281cf4facf60"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.0/dcm-macos-arm-release.zip"
    sha256 "03d0c24186990f6b1e40661fcc8e7b7d3f3320ee8cb1a7e6875cd840011104a7"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.0/dcm-linux-x64-release.zip"
    sha256 "5e00e1ddb41aaa0f3af12587f71ebef788e9877b9692b2650b39cc3e3bceeee4"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.35.0/dcm-linux-arm-release.zip"
    sha256 "78ce9347766ace4695a842b62237fd9e1b07019295f0278807f268c621b2a3c7"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
