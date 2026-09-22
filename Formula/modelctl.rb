class Modelctl < Formula
  desc "Manage OpenCode models and API tokens"
  homepage "https://stianfro.github.io/modelctl/"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stianfro/modelctl/releases/download/v1.0.0/modelctl_1.0.0_darwin_arm64.tar.gz"
      sha256 "04c9270d90aacaf2c188ef64c68c16cb93005597254fae8f6e4ea2dca3e6b9e8"
    end
    on_intel do
      url "https://github.com/stianfro/modelctl/releases/download/v1.0.0/modelctl_1.0.0_darwin_amd64.tar.gz"
      sha256 "9d814db0928b0b400adfacbd589f5e8bd9bf63778fa474dee1153477697cd9a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stianfro/modelctl/releases/download/v1.0.0/modelctl_1.0.0_linux_arm64.tar.gz"
      sha256 "f04a9d7c72917e50698e0945ac6e5c65568115151813ca415d0963efeb5c18bd"
    end
    on_intel do
      url "https://github.com/stianfro/modelctl/releases/download/v1.0.0/modelctl_1.0.0_linux_amd64.tar.gz"
      sha256 "4187a6896855902337e1e6e86bb0cd598f7b3068710105f2c8ed8881a93b92da"
    end
  end

  def install
    bin.install "modelctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelctl --version")
  end
end
