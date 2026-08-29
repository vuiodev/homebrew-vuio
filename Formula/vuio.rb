class Vuio < Formula
  desc "A cross-platform, DLNA/UPnP media server in Rust"
  homepage "https://github.com/vuiodev/vuio"
  version "0.0.46"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.46/vuio-macos-arm64.tar.gz"
      sha256 "8b787a16dfe30a9594e1e6f4453ae488fb4c2d906fb1081cdb4cfef8b8c194af"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.46/vuio-macos-x86_64.tar.gz"
      sha256 "517d4c67e6ad90f58978c71c474b05bfdb753c4896e371b8a0f5d72f1b903e39"
    end

  elsif OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.46/vuio-linux-arm64.tar.gz"
      sha256 "2be0aafd3866badb896b607be957c73beeeed1b3844f75ea286aba37e7d3804f"
    elsif Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.46/vuio-linux-armv7.tar.gz"
      sha256 "322d9733b51397bb625fd919f2a110515745be908b8be9253600cdb6f114cfdf"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.46/vuio-linux-x86_64.tar.gz"
      sha256 "0ca100c8704f799b049095e97314d904efe0858e7cfff8ae4104bcc28805d23c"
    end
  end

  def install
    bin.install "vuio"
  end

  test do
    system "#{bin}/vuio", "--version"
  end
end