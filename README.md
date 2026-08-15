# stianfro Homebrew Tap

Homebrew formulae for projects maintained by [stianfro](https://github.com/stianfro).

## Usage

```sh
brew tap stianfro/tap
brew install kvdrain
brew install --cask hae
```

If `HOMEBREW_REQUIRE_TAP_TRUST` is enabled, trust the tap before installing:

```sh
brew trust --tap stianfro/tap
```

The shorter form is equivalent:

```sh
brew install stianfro/tap/kvdrain
brew install --cask stianfro/tap/hae
```

Hæ? 0.1.0 is an ad hoc signed personal beta and has not been notarized by
Apple. If macOS blocks its first launch, attempt to open Hæ?, then go to
**System Settings > Privacy & Security** and choose **Open Anyway**. Do not
disable Gatekeeper globally.

Release updates are proposed as pull requests and verified before merge.

## License

The files in this repository are licensed under the Apache License 2.0. Individual
packages retain the licenses published by their upstream projects.
