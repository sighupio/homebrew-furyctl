# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "Furyctl  binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sighupio/furyctl/releases/download/v0.3.1/furyctl-darwin-amd64.tar.gz"
    sha256 "16d5ca83b74f30683905606697bce033f5f0a46e20b29a029d91bddb0573dec0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sighupio/furyctl/releases/download/v0.3.1/furyctl-linux-amd64.tar.gz"
    sha256 "9e9ac6784a764c959f54982a4f87f6018c68623bca5cad5b77f1c98e9b97134b"
  end

  conflicts_with "furyctl"

  def install
    bin.install 'furyctl'
  end

  test do
    system "#{bin}/furyctl"
  end
end
