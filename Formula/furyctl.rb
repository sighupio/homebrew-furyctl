# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "furyctl binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.26.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sighupio/furyctl/releases/download/v0.26.2/furyctl-darwin-arm64.tar.gz"
      sha256 "9bfa3536bcbc162ff26efca4e13cb3a246728ce215166e9c5e429b22305c414f"

      def install
        bin.install 'furyctl'
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sighupio/furyctl/releases/download/v0.26.2/furyctl-darwin-amd64.tar.gz"
      sha256 "45924d54e4706f1ae60cfc2070d9874d9d9df8be4a2e127086d6ac56c4c77c0d"

      def install
        bin.install 'furyctl'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sighupio/furyctl/releases/download/v0.26.2/furyctl-linux-arm64.tar.gz"
      sha256 "0a6bea40af4516e165f2e20615d9a5b195e1188eea959f155746b5c1594c8ce5"

      def install
        bin.install 'furyctl'
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sighupio/furyctl/releases/download/v0.26.2/furyctl-linux-amd64.tar.gz"
      sha256 "6ccd382ae5f307d6b9104922a9a1526c97397776426c4b86cedf90f84fb4751a"

      def install
        bin.install 'furyctl'
      end
    end
  end

  conflicts_with "furyctl"

  test do
    system "#{bin}/furyctl"
  end
end
