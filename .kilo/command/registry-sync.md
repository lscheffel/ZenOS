---
description: Sync REGISTRY.md with actual repository state
agent: reviewer
---

# Registry Sync Command

Scans repository and updates REGISTRY.md automatically.

## Usage
```bash
/registry-sync
```

## Workflow
1. Scan `capabilities/` for manifests
2. Scan `knowledge/decisions/` for ADRs
3. Scan `runtime/session/` for handoffs
4. Update REGISTRY.md with detected artifacts
