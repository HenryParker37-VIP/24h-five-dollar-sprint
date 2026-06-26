#!/usr/bin/env bash
set -euo pipefail

TEXT='Your bio should answer: who are you for, what do they get, what should they do next? I am rewriting a few today for $5 if anyone wants a quick outside eye.

DM me if you want the $5 version.'

if command -v pbcopy >/dev/null 2>&1; then
  printf "%s" "$TEXT" | pbcopy
  echo "Copied post 2 to clipboard."
else
  printf "%s\n" "$TEXT"
fi
