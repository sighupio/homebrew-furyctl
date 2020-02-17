# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "Furyctl  binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sighupio/furyctl/releases/download/v0.2.2/furyctl-darwin-amd64.tar.gz"
    sha256 "3eee1d61b614516c1764f3c4dfd100616df75e322a4a35f9da25e0c5eeb384b0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sighupio/furyctl/releases/download/v0.2.2/furyctl-linux-amd64.tar.gz"
      sha256 "9c6429a3263de32d8d041c98ec0fa49051950a3fca48b1afeba4b363fc584755"
    end
  end
  
  conflicts_with "furyctl"

  def install
    bin.install 'furyctl'
  end

  test do
    system "#{bin}/furyctl"
  end
end
