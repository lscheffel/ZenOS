---
description: Sync canonical.md with ADR domain terms
agent: reviewer
---

# Ontology Sync Command

Extracts domain terms from ADRs and updates canonical ontology.

## Usage
```bash
/ontology-sync
```

## Workflow
1. Scan `knowledge/decisions/` for ADRs
2. Extract `## Domain Terms` sections
3. Merge into `knowledge/ontology/canonical.md`
