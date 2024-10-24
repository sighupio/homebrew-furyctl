# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Furyctl < Formula
  desc "furyctl binary"
  homepage "https://gihub.com/sighupio/furyctl"
  version "0.29.10"

  on_macos do
    on_intel do
      url "https://github.com/sighupio/furyctl/releases/download/v0.29.10/furyctl-darwin-amd64.tar.gz"
      sha256 "c857a536acd0daf4284bcbc40f72a132acde05f562109cde146d354e726c1bcb"

      def install
        bin.install 'furyctl'
      end
    end
    on_arm do
      url "https://github.com/sighupio/furyctl/releases/download/v0.29.10/furyctl-darwin-arm64.tar.gz"
      sha256 "5cbf917710c5b317eb475bcd15f861898b65d9037c64097f59eb13822a66f8ad"

      def install
        bin.install 'furyctl'
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sighupio/furyctl/releases/download/v0.29.10/furyctl-linux-amd64.tar.gz"
        sha256 "258d8ca03fc555d934854e7a0498ae97d4b5c7fd9d2aaeab85c4d81fc0e55eca"

        def install
          bin.install 'furyctl'
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sighupio/furyctl/releases/download/v0.29.10/furyctl-linux-arm64.tar.gz"
        sha256 "b66a148623abb63b291ee7b8fc11839eaa6ccb328a032a421085806640754586"

        def install
          bin.install 'furyctl'
        end
      end
    end
  end

  conflicts_with "furyctl"

  test do
    system "#{bin}/furyctl"
  end
end
