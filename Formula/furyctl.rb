# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "Furyctl  binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sighupio/furyctl/releases/download/v0.3.0/furyctl-darwin-amd64.tar.gz"
    sha256 "0de0c7455cb445aec40af5eeed6b6805ab91e94109cc4dd445db66528e39a4cc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sighupio/furyctl/releases/download/v0.3.0/furyctl-linux-amd64.tar.gz"
    sha256 "af9b26feabb594376dabf585bfcc3406a0f1477ba4011010a34c4e62f1203ef8"
  end

  conflicts_with "furyctl"

  def install
    bin.install 'furyctl'
  end

  test do
    system "#{bin}/furyctl"
  end
end
