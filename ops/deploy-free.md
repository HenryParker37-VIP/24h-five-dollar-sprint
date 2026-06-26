# Deploy Free

Do not deploy until your PayPal link is correct or you are comfortable using the temporary fallback:

```text
DM me to pay via PayPal.
```

## Manual deploy: Netlify Drop

1. Open https://app.netlify.com/drop
2. Drag this folder into the page:

```text
/Users/henryparker37/Documents/24h-five-dollar-sprint/landing-page
```

3. Wait for Netlify to publish.
4. Copy the live `https://...netlify.app` URL.
5. Open the URL in a phone-sized browser window.

## Manual deploy: Vercel

1. Open https://vercel.com/new
2. Import or upload the static `landing-page` folder.
3. Keep the project static. No paid services are needed.
4. Copy the live `https://...vercel.app` URL.

## Manual deploy: GitHub Pages

1. Create a GitHub repo for this static page.
2. Upload the contents of `landing-page`.
3. In repo settings, enable Pages from the branch/folder you uploaded.
4. Copy the live `https://USERNAME.github.io/REPO` URL.

## CLI deploy if already logged in

These commands publish only if you run them. I will not run them without your approval.

Current local check on this Mac:

- `netlify`: not installed.
- `vercel`: not installed.
- `gh`: installed and authenticated.

Netlify:

```bash
cd /Users/henryparker37/Documents/24h-five-dollar-sprint/landing-page
netlify status
netlify deploy --dir . --prod
```

Vercel:

```bash
cd /Users/henryparker37/Documents/24h-five-dollar-sprint/landing-page
vercel whoami
vercel --prod
```

GitHub Pages with `gh`:

```bash
cd /Users/henryparker37/Documents/24h-five-dollar-sprint
gh auth status
```

Since `gh` is already authenticated, GitHub Pages is available if you want to publish through GitHub. Ask before creating a repo, pushing, or enabling Pages.

One possible manual GitHub Pages path:

```bash
cd /Users/henryparker37/Documents/24h-five-dollar-sprint
git init
git add landing-page README.md product marketing ops scripts
git commit -m "Launch 5 dollar bio fix page"
gh repo create 24h-five-dollar-sprint --private --source=. --push
```

Then enable Pages from the GitHub repo settings, or ask me to prepare the exact Pages commands before publishing.

## What URL to copy

Copy the public landing-page URL, for example:

```text
https://your-site-name.netlify.app
```

Use that URL anywhere the drafts say `[LANDING_PAGE_URL]` or where you want to send people to the offer page.

## What to test after deploy

- Page loads on desktop and phone.
- PayPal button opens your public PayPal payment page.
- If PayPal is not ready, fallback text says: `DM me to pay via PayPal.`
- Preview image loads.
- Contact/intake message is visible.
- Copy button works.
- No fake testimonials, no fake sales numbers, no income claims.

## Replace local links in marketing drafts

After deployment:

```bash
cd /Users/henryparker37/Documents/24h-five-dollar-sprint
LIVE_URL='https://your-live-url.example'
perl -pi -e "s|\\[LANDING_PAGE_URL\\]|$ENV{LIVE_URL}|g" marketing/*.md ops/launch-board.md ops/tracking.md
```

Then search:

```bash
rg -n "\\[LANDING_PAGE_URL\\]|file:///|localhost|127.0.0.1" marketing ops
```
