class DcmAT120 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.2.0/dcm-macos-x64-release.zip"
    sha256 "c01c712bcc7b0fb2fef2b6fe5a7e42b662f927239e7ac55e316672a489354011"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.2.0/dcm-macos-arm-release.zip"
    sha256 "9b63c9f883f4a68903a42316d6d9aef9cbc6608023c8e29ae0933acb64851a16"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.2.0/dcm-linux-x64-release.zip"
    sha256 "5c0f0a435c4b02fab39b0354b514840c5779a7379bce258306c75e04eeabb619"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
