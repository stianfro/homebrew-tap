class Modelctl < Formula
  desc "Manage OpenCode models and API tokens"
  homepage "https://stianfro.github.io/modelctl/"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stianfro/modelctl/releases/download/v1.2.1/modelctl_1.2.1_darwin_arm64.tar.gz"
      sha256 "a1025053c4bf552ee4916bc133b8f6d5f88e60a15457d19c231954fe084750f3"
    end
    on_intel do
      url "https://github.com/stianfro/modelctl/releases/download/v1.2.1/modelctl_1.2.1_darwin_amd64.tar.gz"
      sha256 "318356c18fede30b977dbc8ce4bb746cdb82085139f3542af34ed4ce61f66da2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stianfro/modelctl/releases/download/v1.2.1/modelctl_1.2.1_linux_arm64.tar.gz"
      sha256 "0322fc1a8c1158235d9c20440f7c2d578fc2a40d856f056ace4ae615887cfd1b"
    end
    on_intel do
      url "https://github.com/stianfro/modelctl/releases/download/v1.2.1/modelctl_1.2.1_linux_amd64.tar.gz"
      sha256 "83ead9ee605a4e936f964b7eaed043baef13b85bcb6fd973372fe8f755637db7"
    end
  end

  def install
    bin.install "modelctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelctl --version")
  end
end
