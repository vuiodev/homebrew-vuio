class Vuio < Formula
  desc "A cross-platform, DLNA/UPnP media server in Rust"
  homepage "https://github.com/vuiodev/vuio"
  version "0.0.44"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.44/vuio-macos-arm64.tar.gz"
      sha256 "3275badabfec25fd36dd198b29878b570a9cac46d277a5f493b92ffc39f987a0"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.44/vuio-macos-x86_64.tar.gz"
      sha256 "41c89e24451fd5e2b2b22cf911764f7b063fddb52ee7ed5c22466be68c79d512"
    end

  elsif OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.44/vuio-linux-arm64.tar.gz"
      sha256 "3675f4524cb6f68986284cbe554a82aac2c3f3c8dc2666c1b01711bb599abb5d"
    elsif Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.44/vuio-linux-armv7.tar.gz"
      sha256 "128f9f1dc244605fa259cededf4a9e0e59ee383dd28d8fa79ad698e2e5ccb1c3"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.44/vuio-linux-x86_64.tar.gz"
      sha256 "3101e8fd46acc681a3ed58c2d2c164ab3c01b435ec459af27ec9a13433ddf73f"
    end
  end

  def install
    bin.install "vuio"
  end

  test do
    system "#{bin}/vuio", "--version"
  end
end