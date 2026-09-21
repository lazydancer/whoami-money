#!/usr/bin/env bash
# The six labels this repository triages by. Run once after `gh auth login`:
#   ./scripts/labels.sh lazydancer/whoami-money
set -euo pipefail
REPO=${1:?repo, e.g. lazydancer/whoami-money}
label() { gh label create "$1" --repo "$REPO" --color "$2" --description "$3" --force >/dev/null && echo "$1"; }
label bug       d73a4a "Something the app did that it should not have"
label import    0e8a16 "A bank file or paste read wrongly or refused"
label sync      1d76db "Accounts, sharing, or the encrypted sync"
label assistant 5319e7 "The local or hosted model features"
label idea      fbca04 "Something the app does not do yet"
label question  e4e669 "Not a bug or an idea, just a question"
