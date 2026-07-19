class Vuio < Formula
  desc "A cross-platform, DLNA/UPnP media server in Rust"
  homepage "https://github.com/vuiodev/vuio"
  version "0.0.33"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.33/vuio-macos-arm64.tar.gz"
      sha256 "d20458b7f1b82887ef531b6b9c04cb684fbbd000a9c4fd1103f35095e123752f"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.33/vuio-macos-x86_64.tar.gz"
      sha256 "87736fd8d64b41f4e3bd8f8e5b9f8c720f065b7016b35f3b6fd1fb796d9bc45a"
    end

  elsif OS.linux?
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.33/vuio-linux-arm64.tar.gz"
      sha256 "8a6be915f3e6cfd37b0720c547e14c5ede0bb4483648091cb9ed476e8b61ff89"
    elsif Hardware::CPU.arm?
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.33/vuio-linux-armv7.tar.gz"
      sha256 "72778e9755939dfada7acbdd018f80007e9d0004c42842052d729c8dc43ed661"
    else
      url "https://github.com/vuiodev/vuio/releases/download/v0.0.33/vuio-linux-x86_64.tar.gz"
      sha256 "30c6f20f234463ce0a29a3ee12c4e4a35a28a22880aa19ebaadec59a58917410"
    end
  end

  def install
    bin.install "vuio"
  end

  test do
    system "#{bin}/vuio", "--version"
  end
end