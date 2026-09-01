class Vuio < Formula
  desc "A cross-platform, DLNA/UPnP media server in Rust"
  homepage "https://github.com/vuiodev/vuio"
  version "0.0.49"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.49/vuio-macos-arm64.tar.gz"
      sha256 "be9b96ce5b775fde60512a447cbfaefc71d7c4b5216159bdd67e4dbde6286f37"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.49/vuio-macos-x86_64.tar.gz"
      sha256 "e4e8572ffece6f0625db0f3722e9fc8d7e632fe89766b634647a57bf3a2f9c6e"
    end

  elsif OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.49/vuio-linux-arm64.tar.gz"
      sha256 "bc9a5f5b66fce2e262bde955c9d3a2589c0a9cbb9bdf1ee7fc6266a63fdf1bea"
    elsif Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.49/vuio-linux-armv7.tar.gz"
      sha256 "a14209c2434c99782378825d5355828a57d7de2645d3df16db4034e0db2b1f31"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.49/vuio-linux-x86_64.tar.gz"
      sha256 "e0efd40664109f6f809149aaf1a7c838f9c5c412b41e1a8ee7d5988df34173ed"
    end
  end

  def install
    bin.install "vuio"
  end

  test do
    system "#{bin}/vuio", "--version"
  end
end