# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "Furyctl  binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.6.0-rc0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sighupio/furyctl/releases/download/v0.6.0-rc0/furyctl-darwin-amd64.tar.gz"
    sha256 "8b36c684bb6934d7fbbb79cf0279ba846dd80c833121f26b302e4ca8f1622e9d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sighupio/furyctl/releases/download/v0.6.0-rc0/furyctl-linux-amd64.tar.gz"
    sha256 "3aa77afd270e27e0c36319ca72baf1bd956a0d53cb6f5c463506ddb8acc2cdac"
  end

  conflicts_with "furyctl"

  def install
    bin.install 'furyctl'
  end

  test do
    system "#{bin}/furyctl"
  end
end
