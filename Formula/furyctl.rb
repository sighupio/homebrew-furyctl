# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "furyctl binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.29.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sighupio/furyctl/releases/download/v0.29.7/furyctl-darwin-amd64.tar.gz"
      sha256 "a0e75edcd13bbfc1a870f149699b7433f9d47afc374ffc51adcb3ed1a78575e0"

      def install
        bin.install 'furyctl'
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sighupio/furyctl/releases/download/v0.29.7/furyctl-darwin-arm64.tar.gz"
      sha256 "68ecdbcd88426bf79110db5da16aacec4db4445fd864be200016734c11880541"

      def install
        bin.install 'furyctl'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sighupio/furyctl/releases/download/v0.29.7/furyctl-linux-amd64.tar.gz"
      sha256 "852ce770b0f3e6ff5c938d5b6e7ec6d49da70dabf9c7f2b390ed7d4e4866bfdf"

      def install
        bin.install 'furyctl'
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sighupio/furyctl/releases/download/v0.29.7/furyctl-linux-arm64.tar.gz"
      sha256 "a317d55d6603008b773a0aa6b71fce26a2caa0f4615777377b7d07657db67f7c"

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
