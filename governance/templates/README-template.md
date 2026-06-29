# {{PROJECT_NAME}}

Governed project instance bootstrapped from ZenOS template.

## Quick Start

```bash
# Load governance
1. Read AGENTS.md and governance/governance_manifest.md
2. Register capabilities in capabilities/
3. Define ontology in knowledge/ontology/
4. Create ADRs in knowledge/decisions/ for architectural decisions
```

## Structure

| Domain | Path | Purpose |
|--------|------|---------|
| A | scripts/ | Bootstrap engine |
| B | governance/ | Constitutional governance |
| C | knowledge/ | Project cognition |
| D | capabilities/ | Executable capabilities |
| E | project/ | Business implementation |
| F | runtime/ | Transient state |

## Validation

```bash
npm run validate:manifest    # Check governance consistency
npm run validate:generated    # Check generated artifacts
npm run security:scan         # Audit for vulnerabilities
```

## Governance

All work must pass:
- GATE-01: Constitutional Compliance
- GATE-02: Ontology Compliance
- GATE-03: Ownership Compliance
- GATE-04: Contract Compliance

See AGENTS.md for full requirements.
