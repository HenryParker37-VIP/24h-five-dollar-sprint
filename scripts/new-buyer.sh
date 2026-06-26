#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

prompt() {
  local label="$1"
  local value
  printf "%s: " "$label" >&2
  IFS= read -r value
  printf "%s" "$value"
}

BUYER_NAME="$(prompt "Buyer name")"
PROFILE_LINK="$(prompt "Profile link")"
CONTACT="$(prompt "Buyer email or DM platform")"
PAYMENT_CONFIRMED="$(prompt "Payment confirmed yes/no")"

if [[ -z "${BUYER_NAME// }" ]]; then
  echo "Buyer name is required." >&2
  exit 1
fi

SLUG="$(printf "%s" "$BUYER_NAME" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//')"
if [[ -z "$SLUG" ]]; then
  SLUG="buyer"
fi

DATE="$(date +%F)"
BUYER_DIR="$ROOT/buyers/$DATE-$SLUG"
mkdir -p "$BUYER_DIR"

cat > "$BUYER_DIR/intake.md" <<EOF
# Buyer Intake

- Buyer name: $BUYER_NAME
- Profile link: $PROFILE_LINK
- Buyer email or DM platform: $CONTACT
- Payment confirmed: $PAYMENT_CONFIRMED
- Created: $(date)

## Buyer goal

- Platform:
- Goal: followers / DMs / buyers / clients / job opportunities / other
- Who they want to attract:
- Words or claims to avoid:
- Notes from buyer:

## Safety

- Do not ask for passwords.
- Do not invent proof.
- Use only public profile details or buyer-provided screenshots/text.
EOF

cat > "$BUYER_DIR/delivery.md" <<EOF
# 24-Hour Bio Fix Delivery

Buyer: $BUYER_NAME
Profile: $PROFILE_LINK
Contact: $CONTACT
Payment confirmed: $PAYMENT_CONFIRMED

## Quick diagnosis

[Write 1-3 kind, specific sentences about what is unclear and what you improved.]

## 3 rewritten bios

### Option 1 - Clear

[Bio option 1]

### Option 2 - Warm

[Bio option 2]

### Option 3 - Sales-focused

[Bio option 3]

## 3 pinned post hooks

1. [Hook 1]
2. [Hook 2]
3. [Hook 3]

## 5 improvement notes

1. [Specific note 1]
2. [Specific note 2]
3. [Specific note 3]
4. [Specific note 4]
5. [Specific note 5]

## Best version to paste today

[Final recommended bio]

## Why this one

[Short reason]

## Bonus checklist

Attach or paste:

- \`product/bonus-profile-clarity-checklist.md\`

## One small revision

If the tone feels off, reply with one sentence describing the style you want. I include one small revision.
EOF

cat > "$BUYER_DIR/notes.md" <<EOF
# Buyer Notes

## Work log

- [ ] Payment manually verified in PayPal.
- [ ] Intake details received.
- [ ] Profile reviewed.
- [ ] Delivery drafted.
- [ ] Delivery sent.
- [ ] One small revision handled if requested.

## Research notes

- Current bio:
- Audience:
- Offer/content:
- Proof that is safe to use:
- CTA:
- Avoid:

## Follow-up

- Ask permission before sharing any before/after publicly.
- Do not expose buyer private info.
EOF

if [[ ! "$PAYMENT_CONFIRMED" =~ ^[Yy][Ee]?[Ss]?$ ]]; then
  echo "Warning: payment is marked '$PAYMENT_CONFIRMED'. Verify PayPal manually before delivery." >&2
fi

echo "Created buyer workspace:"
echo "$BUYER_DIR"
open "$BUYER_DIR" >/dev/null 2>&1 || true
