# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "Furyctl binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.10.0"

  on_macos do
    url "https://github.com/sighupio/furyctl/releases/download/v0.10.0/furyctl-darwin-amd64.tar.gz"
    sha256 "197bf672cc62c59c7ec6924fb7893b1e791c610050ee54758d13307bfd5558df"

    def install
      bin.install 'furyctl'
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Furyctl
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sighupio/furyctl/releases/download/v0.10.0/furyctl-linux-amd64.tar.gz"
      sha256 "d55ed73dff5bc0a06f158c2cf60ad01c1f134f2c98573141123ee80404eaf4fb"

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
