class Vuio < Formula
  desc "A cross-platform, DLNA/UPnP media server in Rust"
  homepage "https://github.com/vuiodev/vuio"
  version "0.0.44"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.44/vuio-macos-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.44/vuio-macos-x86_64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

  elsif OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.44/vuio-linux-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    elsif Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.44/vuio-linux-armv7.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.44/vuio-linux-x86_64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "vuio"
  end

  test do
    system "#{bin}/vuio", "--version"
  end
end