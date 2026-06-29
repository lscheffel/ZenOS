#!/bin/bash
# ontology-sync.sh - Extract domain terms from ADRs and update canonical.md
set -e
REPO_ROOT="${1:-.}"
ONTOLOGY_FILE="$REPO_ROOT/knowledge/ontology/canonical.md"

# Extract terms from ADRs (check both knowledge/ and governance/decisions)
for adr in "$REPO_ROOT/knowledge/decisions"/ADR-*.md "$REPO_ROOT/governance/decisions"/ADR-*.md; do
  if [ -f "$adr" ]; then
    # Skip template/placeholder files
    if grep -q "\[List domain-specific terms" "$adr" 2>/dev/null; then
      continue
    fi
    # Extract Domain Terms section content (until next ## or EOF)
    sed -n '/^## Domain Terms$/,/^## /p' "$adr" | sed '1d;$d' >> "$ONTOLOGY_FILE" 2>/dev/null || true
  fi
done