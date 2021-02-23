# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "Furyctl  binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.3.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sighupio/furyctl/releases/download/v0.3.6/furyctl-darwin-amd64.tar.gz"
    sha256 "8bcd06f6048c7d25e917b8a5084e2d86cec782edb9e9064d78a6877d1c532f1a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sighupio/furyctl/releases/download/v0.3.6/furyctl-linux-amd64.tar.gz"
    sha256 "d543438283f82dd41cea03e0249f3bb006f7b2377c070ff510675dab24df33f3"
  end

  conflicts_with "furyctl"

  def install
    bin.install 'furyctl'
  end

  test do
    system "#{bin}/furyctl"
  end
end
