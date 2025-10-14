class DcmAT1320 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.0/dcm-macos-x64-release.zip"
    sha256 "879b51c3098fb54dfa0a181d27978a7fb55ccbb3c5a1bdb08866cc5ccedb7c66"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.0/dcm-macos-arm-release.zip"
    sha256 "42094264afe4f4fa5fdd78b540630f1e57fb5158c89958f4d5ea579b84ba96c7"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.0/dcm-linux-x64-release.zip"
    sha256 "83e9663e5063f679b1ac3b996d763e38a542a02577c60f33503dfbad216b2480"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.32.0/dcm-linux-arm-release.zip"
    sha256 "faac94820092cc2109888fc3e9acd4caa025196c39739ebe3f617dd0afe10980"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
