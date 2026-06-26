#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

POST_1='I am doing a tiny 24-hour experiment: $5 profile bio fixes for creators/freelancers. Send a profile link, I will send 3 clearer bio options, 3 pinned post hooks, and 5 notes. No hype, just cleaner words.'
POST_2='Your bio should answer: who are you for, what do they get, what should they do next? I am rewriting a few today for $5 if anyone wants a quick outside eye.'
POST_3='If your profile says "helping people grow" but not who or how, I can help. $5 bio fix: 3 rewrites + 3 pinned hooks + 5 practical notes.'

echo "Opening launch cockpit..."
open "$ROOT/landing-page/index.html" >/dev/null 2>&1 || true
open "$ROOT/ops/launch-board.md" >/dev/null 2>&1 || true
open "$ROOT/marketing" >/dev/null 2>&1 || true
open "$ROOT/ops/tracking.md" >/dev/null 2>&1 || true

cat <<EOF

FIRST 3 POSTS TO PUBLISH MANUALLY

1. $POST_1

2. $POST_2

3. $POST_3

FIRST 10 DM TARGETS / CATEGORIES

1. Small TikTok creator with a weak or vague bio.
2. Instagram micro-creator with no clear audience.
3. Freelancer with an unclear LinkedIn headline.
4. Student building a LinkedIn profile.
5. Indie hacker building in public.
6. Small business Instagram page with unclear product text.
7. Local service page missing service area or CTA.
8. Portfolio owner with no clear role/service.
9. New coach or consultant with broad positioning.
10. X/Twitter account that says "building" but not for whom.

EOF

if command -v pbcopy >/dev/null 2>&1; then
  printf "%s" "$POST_1" | pbcopy
  echo "Copied post 1 to clipboard."
else
  echo "pbcopy not found. Copy post 1 manually from above."
fi

cat <<'EOF'

EXACT NEXT ACTION

Paste PayPal link -> deploy -> post warm post -> send 10 approved DMs.

Safe reminder: this script opened files and copied a draft only. It did not post, DM, deploy, or confirm payment.
EOF
