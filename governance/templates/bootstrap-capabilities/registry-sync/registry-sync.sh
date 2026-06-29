#!/bin/bash
# registry-sync.sh - Scan repository and update REGISTRY.md

set -e
REPO_ROOT="${1:-.}"
REGISTRY_FILE="$REPO_ROOT/REGISTRY.md"

# Generate registry
cat > "$REGISTRY_FILE" << EOF
# Project Registry

## Capabilities
EOF

# Add capabilities (if any exist)
if [ -d "$REPO_ROOT/capabilities" ]; then
  find "$REPO_ROOT/capabilities" -mindepth 1 -maxdepth 1 -type d -exec basename {} \; 2>/dev/null | while read cap; do
    echo "- $cap" >> "$REGISTRY_FILE"
  done
fi

cat >> "$REGISTRY_FILE" << EOF

## Knowledge
EOF

# Add ADRs from knowledge/decisions (primary) and governance/decisions (template)
for dir in "$REPO_ROOT/knowledge/decisions" "$REPO_ROOT/governance/decisions"; do
  if [ -d "$dir" ]; then
    find "$dir" -name "ADR-*.md" -type f 2>/dev/null -exec basename {} \; | while read adr; do
      echo "- $adr" >> "$REGISTRY_FILE"
    done
  fi
done

cat >> "$REGISTRY_FILE" << EOF

## Runtime Sessions
EOF

# Add session handoffs (if any exist)
if [ -d "$REPO_ROOT/runtime/session" ]; then
  find "$REPO_ROOT/runtime/session" -name "*.md" -type f 2>/dev/null -exec basename {} \; | while read sess; do
    echo "- $sess" >> "$REGISTRY_FILE"
  done
fi

cat >> "$REGISTRY_FILE" << EOF

## Status: SYNCHRONIZED
$(date -Iseconds)
EOF
