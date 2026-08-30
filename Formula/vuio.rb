class Vuio < Formula
  desc "A cross-platform, DLNA/UPnP media server in Rust"
  homepage "https://github.com/vuiodev/vuio"
  version "0.0.48"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.48/vuio-macos-arm64.tar.gz"
      sha256 "af3cae9ffb59c5bc2c5c220eab79941a84102d63bdb3258a59668e22de3aecf8"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.48/vuio-macos-x86_64.tar.gz"
      sha256 "fbd9e19cebc120ab165c30905377fcc6e554d4600e4b2b5a7128bf4914622b72"
    end

  elsif OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.48/vuio-linux-arm64.tar.gz"
      sha256 "2f42980f4f73a57ae3aa6f9910a7e7bb06c83be6f9fa976c49de9c1f439c9e86"
    elsif Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.48/vuio-linux-armv7.tar.gz"
      sha256 "21185394d917a442ac1f6fa173caf23849b1d22695fc377e920ca46528eb5379"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.48/vuio-linux-x86_64.tar.gz"
      sha256 "3ce8e736678d7e9e61fb6450288aef9390c35eb998586ce8507913e0746488a6"
    end
  end

  def install
    bin.install "vuio"
  end

  test do
    system "#{bin}/vuio", "--version"
  end
end