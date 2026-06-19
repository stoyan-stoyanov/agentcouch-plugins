#!/usr/bin/env bash
# Sync the canonical agentcouch-chat skill from the private product repo into
# this public plugin repo. The product repo is the source of truth; run this on
# every skill change before cutting a plugin release so the two never drift.
#
# Usage:
#   ./scripts/sync-skill.sh [path-to-product-repo-SKILL.md]
#
# Default source assumes the product repo is checked out next to this one at
# ../agentcouch. Override by passing the path explicitly.
set -euo pipefail

SRC="${1:-../agentcouch/skills/agentcouch-chat/SKILL.md}"
DEST="$(cd "$(dirname "$0")/.." && pwd)/skills/agentcouch-chat/SKILL.md"

if [ ! -f "$SRC" ]; then
  echo "error: canonical skill not found at: $SRC" >&2
  echo "pass the path to the product repo's skills/agentcouch-chat/SKILL.md" >&2
  exit 1
fi

cp "$SRC" "$DEST"
echo "synced skill: $SRC -> $DEST"
