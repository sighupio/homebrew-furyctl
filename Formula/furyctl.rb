class Furyctl < Formula
  FURYCTL_VERSION = "v0.14".freeze

  desc "Installs Sighup Furyctl from github"
  homepage "https://github.com/sighupio/furyctl"
  url "https://github.com/sighupio/furyctl/releases/download/v#{FURYCTL_VERSION}/furyctl-darwin-amd64"
  sha256 'b7a02c1ef007df54a1266f3675e71742afecb4ab307d46cae945ca11917862c9'

    def install
      bin.install 'furyctl'
    end
    
    test do
      system "#{bin}/furyctl"
    end
end
