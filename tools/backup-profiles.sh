#!/bin/bash
# backup-profiles.sh - Sync EasyEffects output profiles to Git repo

# ---- CONFIGURATION ----
EE_CONFIG_DIR="$HOME/.config/easyeffects/output"
REPO_DIR="$HOME/repos/easyeffects-profiles"
REPO_OUTPUT_DIR="$REPO_DIR/output"
# -----------------------

# Ensure repo exists
cd "$REPO_DIR" || { echo "Repo not found at $REPO_DIR"; exit 1; }

# Ensure output directory exists
mkdir -p "$REPO_OUTPUT_DIR"

# Copy updated profiles (only if newer or missing)
cp -u "$EE_CONFIG_DIR"/*.json "$REPO_OUTPUT_DIR" 2>/dev/null

# Stage, commit, and push if there are changes
if git diff --quiet && git diff --cached --quiet; then
    echo "No changes to commit."
else
    git add "$REPO_OUTPUT_DIR"/*.json
    git commit -m "Update EasyEffects profiles on $(date '+%Y-%m-%d %H:%M')"
    git push
    echo "Profiles backed up and pushed to GitHub."
fi

