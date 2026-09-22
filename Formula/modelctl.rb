class Modelctl < Formula
  desc "Manage OpenCode models and API tokens"
  homepage "https://stianfro.github.io/modelctl/"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stianfro/modelctl/releases/download/v1.1.0/modelctl_1.1.0_darwin_arm64.tar.gz"
      sha256 "941b8aace369442393fe578be93e91a04223833188b9e86b77a1d3d5bcb89d8f"
    end
    on_intel do
      url "https://github.com/stianfro/modelctl/releases/download/v1.1.0/modelctl_1.1.0_darwin_amd64.tar.gz"
      sha256 "9a0e7027db1434d1fe69a1faf21ebcf7004ddc6daf0d0c40bb23a53df352ef06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stianfro/modelctl/releases/download/v1.1.0/modelctl_1.1.0_linux_arm64.tar.gz"
      sha256 "d24fb479af35396a09f04d8e5b2bcb0b932ba88d391a6daff702dfefde638c70"
    end
    on_intel do
      url "https://github.com/stianfro/modelctl/releases/download/v1.1.0/modelctl_1.1.0_linux_amd64.tar.gz"
      sha256 "7920d4ada29dc7850b3eefaf558c980cdc51c9b65b99fa2614b8591038a328c3"
    end
  end

  def install
    bin.install "modelctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelctl --version")
  end
end
