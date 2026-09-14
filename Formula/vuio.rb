class Vuio < Formula
  desc "A cross-platform, DLNA/UPnP media server in Rust"
  homepage "https://github.com/vuiodev/vuio"
  version "0.0.50"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.50/vuio-macos-arm64.tar.gz"
      sha256 "3101ad8d1524e8016850b250164c52ba28e285f500cae17b5f10eb0d7365961e"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.50/vuio-macos-x86_64.tar.gz"
      sha256 "d04b9ae46e69fd4b44b78e2697ca17e87beda01f201d66206cde6906cbcee53b"
    end

  elsif OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.50/vuio-linux-arm64.tar.gz"
      sha256 "b27cde06b4f1399bbfa70514ea14a15d0168ba5337833201d0f45893995a891f"
    elsif Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.50/vuio-linux-armv7.tar.gz"
      sha256 "775cebed8a7ca5154990b577788794a917e9082bf0d150612a3c3c40af98cbcc"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.50/vuio-linux-x86_64.tar.gz"
      sha256 "6ea9f2aee331697f54398100cefdc6f21bb0df0984b170ba6c5730bebd61c84c"
    end
  end

  def install
    bin.install "vuio"
  end

  test do
    system "#{bin}/vuio", "--version"
  end
end