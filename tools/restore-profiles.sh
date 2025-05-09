#!/bin/bash
# restore-profiles.sh - Restore EasyEffects output profiles from Git repo

# ---- CONFIGURATION ----
EE_CONFIG_DIR="$HOME/.config/easyeffects/output"
REPO_DIR="$HOME/repos/easyeffects-profiles"
REPO_OUTPUT_DIR="$REPO_DIR/output"
# -----------------------

# Ensure destination exists
mkdir -p "$EE_CONFIG_DIR"

# Copy all profiles to EasyEffects config
cp -v "$REPO_OUTPUT_DIR"/*.json "$EE_CONFIG_DIR"

echo "Profiles restored to EasyEffects config directory."

