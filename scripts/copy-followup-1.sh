#!/usr/bin/env bash
set -euo pipefail

TEXT='Thanks. Here is the simple flow:

1. DM me to pay via PayPal, or use the PayPal link I send you manually.
2. Send your profile link/screenshots and your main goal.
3. I deliver 3 bio options, 3 hooks, and 5 notes within 24 hours.

No password needed. If I cannot help, I will say so before taking the work.'

if command -v pbcopy >/dev/null 2>&1; then
  printf "%s" "$TEXT" | pbcopy
  echo "Copied follow-up 1 to clipboard."
else
  printf "%s\n" "$TEXT"
fi
