class Modelctl < Formula
  desc "Manage OpenCode models and API tokens"
  homepage "https://stianfro.github.io/modelctl/"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stianfro/modelctl/releases/download/v1.2.0/modelctl_1.2.0_darwin_arm64.tar.gz"
      sha256 "1d1c06947cfd7fb24c63714e347ccdd460165ff4c4dd880e32de00e076dbffb6"
    end
    on_intel do
      url "https://github.com/stianfro/modelctl/releases/download/v1.2.0/modelctl_1.2.0_darwin_amd64.tar.gz"
      sha256 "f129195121af249d4a71595a754356960097ce9dcb9b58678024286dd63bceea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stianfro/modelctl/releases/download/v1.2.0/modelctl_1.2.0_linux_arm64.tar.gz"
      sha256 "a3054c3ebe609461d4d772ce1f56622b8160e83e466989fc617bb31db9017a04"
    end
    on_intel do
      url "https://github.com/stianfro/modelctl/releases/download/v1.2.0/modelctl_1.2.0_linux_amd64.tar.gz"
      sha256 "c373d4906f627acd9ad05776923ba90cbf8efa25dec3e6c5d5157faa2504178c"
    end
  end

  def install
    bin.install "modelctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelctl --version")
  end
end
