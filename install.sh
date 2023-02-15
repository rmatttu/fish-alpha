#!/usr/bin/env bash
#
# Usage
# ./install.sh
#

set -e
set -u

# Configure
target="$HOME/.config/fish/"

# Main script
mkdir -pv "$target"

rsync -av \
  --exclude ".gitignore" \
  --exclude ".git" \
  --exclude ".github" \
  ./ "$HOME/.config/fish/"
