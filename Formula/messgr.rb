class Messgr < Formula
  desc "messgr control-plane and service binaries"
  homepage "https://github.com/umbrella-org/messgr"
  version "0.1.0"
  license "UNLICENSED"

  on_macos do
    on_arm do
      url "https://github.com/umbrella-org/messgr/releases/download/v0.1.0/messgr_0.1.0_darwin_arm64.tar.gz"
      sha256 "02395b0a69f9562bbc5d1ee624ef4eb170afa72a9706e867d0ec3a6bdd8fa9d4"
    end
    on_intel do
      url "https://github.com/umbrella-org/messgr/releases/download/v0.1.0/messgr_0.1.0_darwin_amd64.tar.gz"
      sha256 "fe02cce636d372820a1a22a70e829ead14272e9d911d481e1f78dc32ba487539"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/umbrella-org/messgr/releases/download/v0.1.0/messgr_0.1.0_linux_amd64.tar.gz"
      sha256 "49690a2938ccc50ebcda9ece2fab5f14cd7ca447a2e9aace2509f3e63fed814f"
    end
    on_arm do
      url "https://github.com/umbrella-org/messgr/releases/download/v0.1.0/messgr_0.1.0_linux_arm64.tar.gz"
      sha256 "77eca5e0ce1bc44b3652546685d6f974aa1cced9056e1c04e2c44408deb3ebbc"
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
