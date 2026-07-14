class Kvdrain < Formula
  desc "KubeVirt-aware node drain CLI"
  homepage "https://github.com/stianfro/kvdrain"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stianfro/kvdrain/releases/download/v0.1.0/kvdrain_v0.1.0_darwin_arm64.tar.gz"
      sha256 "4dc1a04a9ca2b2594a0a0fb5d3985a67a10184befcc94075aec0fac1b0a92ff7"
    end
    on_intel do
      url "https://github.com/stianfro/kvdrain/releases/download/v0.1.0/kvdrain_v0.1.0_darwin_amd64.tar.gz"
      sha256 "8e94d98ef5b3447e569f1b8793d8ed1902d9f5e3ca32c29e0f885d1e39522a42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stianfro/kvdrain/releases/download/v0.1.0/kvdrain_v0.1.0_linux_arm64.tar.gz"
      sha256 "71f8de11a6956c644ef61fe21054a655697694fc7dc65ad3817218c6f12e13ad"
    end
    on_intel do
      url "https://github.com/stianfro/kvdrain/releases/download/v0.1.0/kvdrain_v0.1.0_linux_amd64.tar.gz"
      sha256 "2fdc4923f40d1bfd6ccafd5f86e7274a416e3ea3d48fbeb4d417f85a32620284"
    end
  end

  def install
    bin.install "kvdrain"
  end

  test do
    assert_match "kvdrain v#{version}", shell_output("#{bin}/kvdrain version")
  end
end
