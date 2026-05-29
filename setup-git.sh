#!/bin/bash
set -e

GIT_DIR="/sessions/relaxed-great-bohr/mnt/Git"
REMOTE_URL="https://github.com/hongbot698-bit/git.git"

echo "=== Step 1: Initialize Git repo ==="
cd "$GIT_DIR"
git init
git config user.name "hongbot698-bit"
git config user.email "hongbot698@users.noreply.github.com"

echo "=== Step 2: Add files and commit ==="
git add .
git commit -m "Initial commit: initialize Git project"

echo "=== Step 3: Add remote and push ==="
git remote add origin "$REMOTE_URL"
git branch -M main
git push -u origin main

echo "=== Done! ==="
