# frozen_string_literal: true

cask "hae" do
  version "0.1.0"
  sha256 "55741f638d6d911452da6a751a70e24d7ff712638755b2c128e5a5716dd6226f"

  url "https://github.com/stianfro/hae/releases/download/v#{version}/Hae-#{version}-arm64.zip"
  name "Hæ?"
  desc "Local meeting recorder and transcription app"
  homepage "https://github.com/stianfro/hae"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Hae.app"

  zap trash: "~/Library/Containers/no.froystein.hae"

  caveats <<~EOS
    This beta is ad hoc signed and has not been notarized by Apple.
    If macOS blocks it, remove the quarantine attribute from this app only:
      /usr/bin/xattr -dr com.apple.quarantine /Applications/Hae.app
    This does not disable Gatekeeper globally.
  EOS
end
