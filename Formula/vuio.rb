class Vuio < Formula
  desc "A cross-platform, DLNA/UPnP media server in Rust"
  homepage "https://github.com/vuiodev/vuio"
  version "0.0.33"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.33/vuio-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_MAC_ARM"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.33/vuio-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_MAC_INTEL"
    end

  elsif OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.33/vuio-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    elsif Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.33/vuio-linux-armv7.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARMV7"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.33/vuio-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_INTEL"
    end
  end

  def install
    bin.install "vuio"
  end

  test do
    system "#{bin}/vuio", "--version"
  end
end