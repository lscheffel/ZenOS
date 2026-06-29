# ADR-00005: Template State Reconciliation and Capability Hardening

## Status
IMPLEMENTED

## Context
Post-bootstrap audit discovered multiple issues preventing ZenOS template from being production-ready:
- State contradiction: initial_state.json shows D: false but capabilities deploy
- Registry sync gap: templates vs deployed paths inconsistent
- Ontology sync mismatch: script expects different canonical structure than provided
- Missing capability registry JSON artifact
- Bootstrap creates redundant next_steps after completion

## Decision
Execute comprehensive reconciliation fixing all discovered issues without violating governance integrity.

## Authority
- AED-00011 (Compliance & Enforcement) — Issue remediation required
- AED-00012 (Change Management) — Fixes within template scope

## Rationale
Unchecked issues compound into entropy. Governance integrity requires artifacts to reflect actual state.

## Consequences
**Positivas:**
- Eliminates state contradictions
- Aligns scripts with actual directory structure
- Enables proper capability registration
- Improves bootstrap output accuracy

**Negativas:**
- Requires surgical updates across multiple artifacts

## Implementation
- Fixed initial_state.json: domains_initialized.D: true, added capabilities_deployed field, corrected next_steps
- Created governance/platform/capability-registry.json
- Updated ontology-sync.sh: check both knowledge/decisions and governance/decisions, removed temp file logic
- Fixed registry-sync.sh: handle empty directories gracefully, check both ADR locations
- Updated STATE.md to reflect bootstrapped capabilities

## Tags
#governance #reconciliation #capability #bugfix