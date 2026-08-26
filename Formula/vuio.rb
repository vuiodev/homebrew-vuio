class Vuio < Formula
  desc "A cross-platform, DLNA/UPnP media server in Rust"
  homepage "https://github.com/vuiodev/vuio"
  version "0.0.45"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.45/vuio-macos-arm64.tar.gz"
      sha256 "22dec484a36931d1fd2dafa28ba99ccc47e2098186c90b2e1c22f9547b8d47ac"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.45/vuio-macos-x86_64.tar.gz"
      sha256 "12b1e440b79900e0ddf25400ba0e0a671115017dec168cf08ab2c3b4895af810"
    end

  elsif OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.45/vuio-linux-arm64.tar.gz"
      sha256 "523b5ef9a2761da19b3d8a4bbf61e1bfcb94b367f6051e17048222241f8dad7b"
    elsif Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.45/vuio-linux-armv7.tar.gz"
      sha256 "c57eebb96092198fe23cfefd5fe3a97d89deb17f67e356c63b51707d110929a7"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.45/vuio-linux-x86_64.tar.gz"
      sha256 "ff96df0d93a4ca1eff80a87bac977b918d0a0eeba237cb2f37c7aebea42016e0"
    end
  end

  def install
    bin.install "vuio"
  end

  test do
    system "#{bin}/vuio", "--version"
  end
end