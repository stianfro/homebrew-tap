set shell := ["bash", "-euo", "pipefail", "-c"]

# Check a formula's Ruby syntax.
check formula="modelctl":
    brew ruby -- -c Formula/{{formula}}.rb

# Check style and installation after checking out this branch in the installed tap.
test formula="modelctl":
    HOMEBREW_NO_AUTO_UPDATE=1 brew style --formula stianfro/tap/{{formula}}
    HOMEBREW_NO_AUTO_UPDATE=1 brew test stianfro/tap/{{formula}}
