# Orchestrator Contract v1.0

## Purpose
Deploy KiloCode/VSCodium agent orchestration layer to derived projects.

## Interface

### Source
```
governance/templates/kilo/
```

### Target
```
$PROJECT/.kilo/
```

### Files Deployed
- agent/*.md → 4 agents (reviewer, docs, security, release)
- skills/*.md → 4 skills (architecture-audit, roadmap-governance, release-manager, security-audit)
- command/*.md → 11 commands (validation, reconciliation, cleanup)
- package.json → npm scripts template

## Lifecycle
1. Bootstrap copies entire `.kilo/` template to derived project
2. Project may customize agents/skills/commands as needed
3. Governance changes must comply with AED-00012

## Governance Alignment
- All agents inherit ZenOS constitutional requirements
- All skills require governance validation before execution
- All commands are scoped to single-target operations
