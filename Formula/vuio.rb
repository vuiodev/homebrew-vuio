class Vuio < Formula
  desc "A cross-platform, DLNA/UPnP media server in Rust"
  homepage "https://github.com/vuiodev/vuio"
  version "0.0.47"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.47/vuio-macos-arm64.tar.gz"
      sha256 "4d224ffe4d28d12f1bc01c7eb07a408b64c656262b63a4a5ba4db860565a0c65"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.47/vuio-macos-x86_64.tar.gz"
      sha256 "fd2d42bfe337f29a14da7ac59f062265194ef29eb57ce3f11e4cf103c3594761"
    end

  elsif OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.47/vuio-linux-arm64.tar.gz"
      sha256 "b3a58fe58b1aafc798314966d30f005ac15f8c978a8d5dc47ad9c0273f5285c4"
    elsif Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.47/vuio-linux-armv7.tar.gz"
      sha256 "b0447203e43b6b57c593b4d8cb8cdbadd6d714493fe996036bb306b962bea5f1"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.47/vuio-linux-x86_64.tar.gz"
      sha256 "c732936552654f987e97b5b87b92a0e73b951ad933363d3de24b3b753a9aaf7f"
    end
  end

  def install
    bin.install "vuio"
  end

  test do
    system "#{bin}/vuio", "--version"
  end
end