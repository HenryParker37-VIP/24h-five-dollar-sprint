# Payment Setup Now

Use only a public PayPal.me link or a buyer-facing PayPal checkout link.

Do not paste PayPal passwords, dashboard URLs, API keys, client secrets, tokens, private account settings, or private emails into these files.

## Current placeholder search

Run this anytime:

```bash
cd /Users/henryparker37/Documents/24h-five-dollar-sprint
rg -n "PAYPAL_LINK_HERE"
```

## Paste your public PayPal link here

Replace `PAYPAL_LINK_HERE` in these launch-critical buyer-facing places:

| File | Line | What it controls |
| --- | ---: | --- |
| `landing-page/index.html` | 27 | Main PayPal payment button. |
| `marketing/posts.md` | 45 | Pinned announcement PayPal line. |
| `marketing/dm-drafts.md` | 17 | Follow-up payment instructions after someone says yes. |
| `ops/launch-board.md` | 63 | Close message used during manual outreach. |

Current non-buyer-facing documentation and safety references that also contain the placeholder:

| File | Line | What it controls |
| --- | ---: | --- |
| `README.md` | 81 | Setup placeholder shown in README. |
| `README.md` | 84 | PayPal replacement instructions. |
| `README.md` | 96 | Quick promote checklist. |
| `ops/checklist.md` | 5 | Execution checklist. |
| `ops/buyer-flow.md` | 17 | Buyer-flow reminder. |
| `ops/payment-test.md` | 5 | Payment test instructions. |
| `ops/launch-board.md` | 7 | Setup reminder. |
| `landing-page/script.js` | 4 | Placeholder detection. Keep this if you want safety behavior before replacing the link. |
| `ops/payment-setup-now.md` | multiple | This setup guide and search commands. |

## Full placeholder search from the current project

Use this command for the authoritative current list:

```bash
cd /Users/henryparker37/Documents/24h-five-dollar-sprint
rg -n "PAYPAL_LINK_HERE" .
```

Expected buyer-facing hits before setup:

```text
landing-page/index.html:27
marketing/posts.md:45
marketing/dm-drafts.md:17
ops/launch-board.md:63
```

Expected documentation/safety hits before setup:

```text
README.md
ops/checklist.md
ops/buyer-flow.md
ops/payment-test.md
ops/payment-setup-now.md
landing-page/script.js
ops/launch-board.md:7
```

Optional older line map for README/checklist docs:

| File | Line | What it controls |
| --- | ---: | --- |
| `README.md` | 81 | Setup placeholder shown in README. |
| `README.md` | 96 | Quick promote checklist. |
| `ops/checklist.md` | 5 | Execution checklist. |
| `ops/buyer-flow.md` | 17 | Buyer-flow reminder. |
| `ops/payment-test.md` | 5 | Payment test instructions. |
| `landing-page/script.js` | 4 | Placeholder detection. Keep this if you want safety behavior before replacing the link. |

## Temporary fallback CTA

The landing page now shows this fallback if the PayPal button is not configured:

```text
DM me to pay via PayPal.
```

Use this only as a temporary manual fallback. Before posting publicly, the best flow is still:

1. Paste your public PayPal link into `landing-page/index.html`.
2. Test the button.
3. Deploy the page.
4. Replace `PAYPAL_LINK_HERE` in the marketing drafts.

## Fast replacement command

After you have a safe public link, this command can replace the placeholder in the main launch files:

```bash
cd /Users/henryparker37/Documents/24h-five-dollar-sprint
PUBLIC_PAYPAL_LINK='https://www.paypal.me/YOURNAME/5USD'
perl -pi -e "s|PAYPAL_LINK_HERE|$ENV{PUBLIC_PAYPAL_LINK}|g" landing-page/index.html marketing/posts.md marketing/dm-drafts.md ops/launch-board.md
```

Then run:

```bash
rg -n "PAYPAL_LINK_HERE" landing-page marketing ops README.md
```

It is okay if only documentation references remain, but no buyer-facing payment link should still say `PAYPAL_LINK_HERE`.
