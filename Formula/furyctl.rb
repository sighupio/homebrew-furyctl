# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "furyctl binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sighupio/furyctl/releases/download/v0.26.0/furyctl-darwin-arm64.tar.gz"
      sha256 "e0d71fac7e5fe985e034afdc2c0150ead7f31099daef6fa3b1c71a3816099402"

      def install
        bin.install 'furyctl'
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sighupio/furyctl/releases/download/v0.26.0/furyctl-darwin-amd64.tar.gz"
      sha256 "403f34748ed335274dbf0a649f1c310c956e40549568470d9501d2173ed258cf"

      def install
        bin.install 'furyctl'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sighupio/furyctl/releases/download/v0.26.0/furyctl-linux-arm64.tar.gz"
      sha256 "ccdeed00f81faf6d2235a968d757ccc58e38ca6b6a07007f98110ec2f133f09a"

      def install
        bin.install 'furyctl'
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sighupio/furyctl/releases/download/v0.26.0/furyctl-linux-amd64.tar.gz"
      sha256 "ea20f2ede32d2a3dac36a55dc716c4ac01e9bd668018ec82a81c05c1a18fed39"

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
