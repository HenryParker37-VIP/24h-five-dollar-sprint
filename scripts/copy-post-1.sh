#!/usr/bin/env bash
set -euo pipefail

TEXT='I am doing a tiny 24-hour experiment: $5 profile bio fixes for creators/freelancers. Send a profile link, I will send 3 clearer bio options, 3 pinned post hooks, and 5 notes. No hype, just cleaner words.

DM me if you want one today.'

if command -v pbcopy >/dev/null 2>&1; then
  printf "%s" "$TEXT" | pbcopy
  echo "Copied post 1 to clipboard."
else
  printf "%s\n" "$TEXT"
fi
