JUSTICE LEAGUE ACADEMY — SHARED CADET EDITION

WHAT CHANGED
- Keeps the original course catalog, local progress, credential vault and backup tools.
- Adds an Academy Network tab with cadet email/password accounts.
- Adds a shared leaderboard showing callsign, rank, completed-course count and training hours.
- Each cadet's course notes, credential records and detailed profile remain local to their own device.
- Cadets publish their current totals manually using “Publish my training stats”.

IMPORTANT: SHARED MODE NEEDS A FREE DATABASE PROJECT
The app itself is static and can be hosted for free. For shared accounts and leaderboard, the academy owner must create a Supabase project. Supabase's free plan has usage limits and can change; if the project exceeds limits or is paused, shared features may stop working. Local course tracking remains available.

ONE-TIME OWNER SETUP
1. Go to https://supabase.com/ and create a free project. Choose a strong database password and keep it private.
2. In the Supabase project, open SQL Editor, create a new query, paste all of supabase-setup.sql, and run it.
3. Open Project Settings > API (or Connect, depending on dashboard version). Copy the Project URL and the anon/public key (sometimes called publishable key).
4. Never use or share the service_role / secret key in this app.
5. Host this folder over HTTPS. Easiest $0 route: create a GitHub repository, upload the files in this folder, and enable GitHub Pages in repository Settings > Pages. A public GitHub repository means the app source is public; do not put private data or secrets in it. Supabase public anon key is designed to be used in client apps when Row Level Security is correctly enabled.
6. Open the hosted URL in Chrome on Android. Use Chrome menu > Install app / Add to Home screen.
7. Open Academy Network in the app, enter the Supabase Project URL and anon/public key, and tap Connect.
8. Each friend installs the same app URL, enters the same project URL and anon/public key, creates their own account, chooses a callsign, and publishes stats.
9. In Supabase Authentication settings, configure the allowed site URL / redirect URL to your hosted HTTPS app URL. For a small private group, invite only people you trust and keep email confirmation enabled if practical.

SECURITY / PRIVACY
- The SQL enables Row Level Security. Signed-in members can read the leaderboard and can only insert/update their own user_id row.
- Only callsign, rank, course count, training hours and update time are shared. Detailed course notes and credential vault stay on each device.
- Use a callsign, not a legal name. Never publish addresses, phone numbers, school/workplace details, sensitive personal data, or certificate scans.
- This is a small private hobby app, not a high-security system. Anyone you allow to register can see leaderboard entries. For stricter invite-only access, the owner should additionally configure Supabase Auth restrictions or add an invitation workflow before sharing widely.
- The anon/public key is not a password. The service_role/secret key must never be placed in the app or repository.
- Export local backups regularly. Shared leaderboard totals are manually published and may become stale until refreshed.

COST
- App source: $0.
- GitHub Pages static hosting: $0 within GitHub's applicable limits and terms.
- Supabase: $0 on the free plan within its current quotas. Free-tier quotas, inactivity pausing and features can change; check Supabase pricing before launch.
- Google Play publishing is not included and is not required for this installable web app.

LOCAL MODE
The academy still works on one device without Supabase. If the shared database is not configured, use the course catalog, ranks, credential vault and local JSON backup as before.

BRANDING
Unofficial fan-made project for a small private group. Not affiliated with DC Comics, Warner Bros. or any course provider. If distributing beyond friends or publishing publicly, replace DC character names/logos/artwork with original branding and use properly licensed assets.


ANDROID INSTALLATION (UPDATED)
1. Upload every file in this folder to the ROOT of your GitHub repository (replace the older files). Keep icon-192.png and icon-512.png alongside index.html.
2. In GitHub, open Settings > Pages and confirm the published branch is main and folder is /(root).
3. Wait for the Pages deployment to finish, then open the exact HTTPS Pages address in Chrome on Android.
4. Open Chrome's three-dot menu and choose Install app. If it only shows Add to Home screen, use that option.
5. If Chrome still does not offer installation, open the site in Chrome (not an in-app browser), reload it, then visit the site menu again. A previously installed/cached copy may need its old home-screen shortcut removed and the page reloaded.

The app remains a web app/PWA, not a Play Store APK. GitHub Pages must serve the site over HTTPS.
