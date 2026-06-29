# ADR-00004: Ontology Synchronization Capability

## Status
IMPLEMENTED

## Context
Canonical ontology (`knowledge/ontology/canonical.md`) is static template. As capabilities enter dynamically, ontology becomes stale without automated synchronization.

## Decision
Create `ontology-sync` capability that extracts domain terms from ADRs and updates canonical ontology.

## Authority
- ADR-00003 (Canonical Ontology) — Ontology precedes implementation
- ADR-00007 (Contract Specification) — Entity must expose Contract
- ADR-00010 (Repository Layout) — knowledge/ontology/ is canonical

## Rationale
Ontological drift between ADRs and canonical.md produces architectural inconsistencies. Automation prevents stale ontology.

## Consequences
**Positivas:**
- Prevents ontological drift between ADRs and canonical ontology
- Automates domain term extraction from ADRs
- Maintains architectural consistency

**Negativas:**
- Adds complexity to bootstrap process
- Requires maintenance of sync scripts

## Implementation
- `capabilities/ontology-sync/manifest.json` - Deployed capability definition
- `capabilities/ontology-sync/ontology-sync.sh` - Scanner script (extracts Domain Terms from ADRs)
- `capabilities/ontology-sync/contract.md` - Contract specification
- `knowledge/ontology/canonical.md` - Canonical ontology initialized
- `.kilo/command/ontology-sync.md` - Command definition available

## Tags
#ontology #automation #capability