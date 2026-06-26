# 24-Hour $5 Sprint

## Chosen offer

**$5 Bio Fix + Pinned Hook Pack**

For creators, students, freelancers, small shop owners, and builders who have a weak social profile bio and want a clearer reason for people to follow, message, or buy.

## What the buyer gets

For $5, the buyer sends one profile link or screenshots. Within 24 hours, they receive:

- 3 rewritten bio options.
- 3 pinned post / profile headline hooks.
- 5 quick profile improvement notes.
- 1 simple call-to-action line they can paste today.

This is a manual micro-service. It is intentionally small, fast, and honest.

## Why this offer

Current market research points to low-friction digital products and micro-services selling through Payhip, Ko-fi, Gumroad, Reddit, Twitter/X, Facebook groups, and direct social outreach. The fastest path to a first $5 is not a big product; it is a clear, cheap, human service that solves an obvious problem and can be delivered manually.

## Price

**$5 USD**

## Buyer flow

1. Buyer clicks the PayPal button on the landing page.
2. Buyer pays $5.
3. Buyer sends the PayPal screenshot or transaction email plus their profile link.
4. You manually verify the payment.
5. You send the finished delivery using `ops/delivery-template.md`.

## Files

- `product/bio-fix-kit.md` - the working product and service method.
- `product/intake-form.md` - what to ask buyers for.
- `product/delivery-template.txt` - copy/paste delivery format.
- `product/example-delivery.md` - sample finished delivery.
- `product/bonus-profile-clarity-checklist.md` - small buyer-facing bonus.
- `landing-page/index.html` - static sales page.
- `landing-page/styles.css` - mobile-first styling.
- `landing-page/script.js` - small helper for PayPal placeholder and copy buttons.
- `landing-page/profile-fix-preview.png` - product preview visual used on the page.
- `marketing/` - posts, DMs, comments, and launch announcement.
- `ops/` - checklist, buyer flow, payment testing, tracking.
- `ops/launch-board.md` - first actions to get the first buyer.

## Preview locally

Open:

```bash
/Users/henryparker37/Documents/24h-five-dollar-sprint/landing-page/index.html
```

Or run a local server:

```bash
cd /Users/henryparker37/Documents/24h-five-dollar-sprint/landing-page
python3 -m http.server 5173
```

Then visit `http://localhost:5173`.

## Deploy for free

Use any static host:

- Netlify Drop: drag the `landing-page` folder into Netlify Drop.
- GitHub Pages: push `landing-page` as a static site.
- Vercel: import the folder as a static project.

## PayPal setup

The landing page currently uses:

```text
PAYPAL_LINK_HERE
```

Replace every `PAYPAL_LINK_HERE` in `landing-page/index.html` with your public PayPal.me link or a PayPal checkout/payment URL.

Do not paste passwords, API keys, private tokens, or dashboard-only URLs.

Also add your preferred contact handle to the public post or landing page before sharing widely. The current landing page tells buyers to send details back in the same DM/email/thread where they found the offer.

## Promote today

Start with personal social channels and communities where profile improvement is relevant. Do not spam. Post one honest public offer, then reply helpfully to people asking about growth, bios, creator pages, or profile clarity.

Best first action:

1. Replace `PAYPAL_LINK_HERE`.
2. Open the landing page and test the button.
3. Publish the pinned post draft.
4. Send 10 approved DMs to people whose bios can clearly be improved.
5. Offer one free public mini-tip in comments, then mention the $5 fix only if relevant.
