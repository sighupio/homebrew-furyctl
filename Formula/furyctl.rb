# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "Furyctl  binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.5.0-rc2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sighupio/furyctl/releases/download/v0.5.0-rc2/furyctl-darwin-amd64.tar.gz"
    sha256 "f4bd14cf1ba5811fd11d73ccf977cbd61cb2e56d1c99e58308ce432091a940a9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sighupio/furyctl/releases/download/v0.5.0-rc2/furyctl-linux-amd64.tar.gz"
    sha256 "c7c787716d60e71786505831fa2eb8a4d7853aa12b80e55e37f2c8d436384a37"
  end

  conflicts_with "furyctl"

  def install
    bin.install 'furyctl'
  end

  test do
    system "#{bin}/furyctl"
  end
end
