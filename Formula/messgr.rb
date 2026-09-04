class Messgr < Formula
  desc "messgr control-plane and service binaries"
  homepage "https://github.com/umbrella-org/messgr"
  version "0.2.0"
  license "UNLICENSED"

  on_macos do
    on_arm do
      url "https://github.com/umbrella-org/messgr/releases/download/v0.2.0/messgr_0.2.0_darwin_arm64.tar.gz"
      sha256 "4e0b12053aec37aec8af61007dfb5af1721697edbda3354cb2d7df396266eaec"
    end
    on_intel do
      url "https://github.com/umbrella-org/messgr/releases/download/v0.2.0/messgr_0.2.0_darwin_amd64.tar.gz"
      sha256 "475be67af69ebf8137fa2e5df2f8f8688a9c50e8be57edfcc0f5994d2aa378cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/umbrella-org/messgr/releases/download/v0.2.0/messgr_0.2.0_linux_amd64.tar.gz"
      sha256 "7729b39962eb9d3b0253411deedd50a8ee0a3311f4dc1008c7c0ae3b79af4c4b"
    end
    on_arm do
      url "https://github.com/umbrella-org/messgr/releases/download/v0.2.0/messgr_0.2.0_linux_arm64.tar.gz"
      sha256 "094353e8b6ec6aee5d77ab240c4cbd9e0ef9ec1916986e998d141133a801e259"
    end
  end

  def install
    bin.install "messgr-control"
    bin.install "messgr-dispatcher"
    bin.install "messgr-ingest"
  end

  test do
    system "#{bin}/messgr-control", "--version"
    system "#{bin}/messgr-dispatcher", "--version"
    system "#{bin}/messgr-ingest", "--version"
  end
end
