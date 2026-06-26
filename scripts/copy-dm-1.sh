#!/usr/bin/env bash
set -euo pipefail

TEXT='Hey, quick note: I saw your profile and the content looks interesting, but the bio could be clearer about who it is for. I am doing a tiny $5 bio fix today: 3 rewrite options + 3 pinned hooks + 5 notes. Want me to send the details?'

if command -v pbcopy >/dev/null 2>&1; then
  printf "%s" "$TEXT" | pbcopy
  echo "Copied DM 1 to clipboard."
else
  printf "%s\n" "$TEXT"
fi
