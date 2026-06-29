---
description: Sync canonical.md with ADR domain terms
agent: reviewer
---

# Ontology Sync Capability

Extracts domain terms from ADRs and updates canonical ontology.

## Usage
```bash
npm run ontology:sync
```

## Workflow
1. Scan `governance/decisions/` for ADRs
2. Extract `## Domain Terms` sections
3. Merge into `knowledge/ontology/canonical.md`
