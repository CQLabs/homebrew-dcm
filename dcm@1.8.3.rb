class DcmAT183 < Formula
  desc "DCM statically analyzes your Dart code to quickly find quality and consistency problems."
  homepage "https://dcm.dev/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.3/dcm-macos-x64-release.zip"
    sha256 "d8fb433fe9a14b12f4aad9683270d91c35481ae1dc942a4a4c7ee772196ecbcd"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.3/dcm-macos-arm-release.zip"
    sha256 "5462f5253c7fbbd396a4b79ffa7e0723be33486d2ca030b0d0a2c8349813fe5b"
  elsif OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/CQLabs/homebrew-dcm/releases/download/1.8.3/dcm-linux-x64-release.zip"
    sha256 "07c3dcb99f84a1e7571f2da8d05a9d166527c369b611f908d30cd22dc70f3f32"
  end

  def install
    bin.install "dcm"
  end

  test do
    system "false"
  end
end
