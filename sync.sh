#!/usr/bin/env bash
echo "Syncing local files..."
git add .
git commit -m "Auto-update: $(date '+%Y-%m-%d %H:%M:%S')" || true

echo "Pushing to GitHub..."
git push -u origin main --force

echo "Deploying to Vercel..."
vercel --prod --yes

echo "Sync Complete! All local changes saved, pushed to Git, and live on Vercel."
