class Modelctl < Formula
  desc "Manage OpenCode models and API tokens"
  homepage "https://stianfro.github.io/modelctl/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stianfro/modelctl/releases/download/v0.1.0/modelctl_0.1.0_darwin_arm64.tar.gz"
      sha256 "ec77ff46496771856f0cab6faf2bc1d77b3fee7c7d4f2da88c2844f59c03bfa0"
    end
    on_intel do
      url "https://github.com/stianfro/modelctl/releases/download/v0.1.0/modelctl_0.1.0_darwin_amd64.tar.gz"
      sha256 "92d1625fa512c5214eb07f7efd7faad369e79b5d8ca97117dc1fbc931dcf4830"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stianfro/modelctl/releases/download/v0.1.0/modelctl_0.1.0_linux_arm64.tar.gz"
      sha256 "a5a9695886159e55594ce4763adae1f05f8809331706ff751333aa0fd4fd8a70"
    end
    on_intel do
      url "https://github.com/stianfro/modelctl/releases/download/v0.1.0/modelctl_0.1.0_linux_amd64.tar.gz"
      sha256 "c56cbdb15c09725386673f1f2ded67a23003e575f72515b5a91270e8484c35ab"
    end
  end

  def install
    bin.install "modelctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelctl --version")
  end
end
