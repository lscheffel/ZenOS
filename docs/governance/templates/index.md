---
layout: governance
title: Templates
description: Governance artifact templates — standardized formats for AEDs, ADRs, contracts, and more.
domain: governance
collection: governance
collection_name: Governance Templates
category: templates
navigation_weight: 3
---

# Governance Templates

Standardized templates for all governance artifacts. Templates ensure consistency, completeness, and compliance with constitutional requirements.

## Template Categories

### Core Governance Templates

| Template | Purpose | Authority |
|----------|---------|-----------|
| [AED-template.md](/governance/templates/AED-template/) | Architectural Enforcement Directive | AED-00005 |
| [ADR-template.md](/governance/templates/ADR-template/) | Architectural Decision Record | AED-00007 |
| [AGENTS-template.md](/governance/templates/AGENTS-template/) | Constitutional execution engine | AGENTS.md |
| [governance_manifest-template.md](/governance/templates/governance_manifest-template/) | Platform constitution | AED-00005 |

### Artifact Templates

| Template | Purpose |
|----------|---------|
| [ANL-template.md](/governance/templates/ANL-template/) | Analysis artifact |
| [BP-template.md](/governance/templates/BP-template/) | Blueprint |
| [CAPABILITY-template.md](/governance/templates/CAPABILITY-template/) | Capability definition |
| [CONTRACT-template.md](/governance/templates/CONTRACT-template/) | Capability contract |
| [FORENSICS-template.md](/governance/templates/FORENSICS-template/) | Forensic analysis |
| [MANIFEST-template.md](/governance/templates/MANIFEST-template/) | Platform manifest |
| [README-template.md](/governance/templates/README-template/) | Repository README |
| [RM-template.md](/governance/templates/RM-template/) | Release manifest |
| [STATE-TEMPLATE.md](/governance/templates/STATE-TEMPLATE.md) | State definition |
| [TODO-template.md](/governance/templates/TODO-template/) | Execution roadmap |
| [AGENT-template.md](/governance/templates/AGENT-template/) | Agent definition |

### Capability Templates

| Template | Purpose |
|----------|---------|
| [capability-contract-template.md](/governance/templates/capability-contract-template.md) | Standard capability contract |
| [contracts/ontology-sync-contract-v1.md](/governance/templates/contracts/ontology-sync-contract-v1.md) | Ontology sync contract |
| [contracts/registry-sync-contract-v1.md](/governance/templates/contracts/registry-sync-contract-v1.md) | Registry sync contract |
| [contracts/orchestrator-contract-v1.md](/governance/templates/contracts/orchestrator-contract-v1.md) | Orchestrator contract |

### Bootstrap Capability Templates

| Template | Purpose |
|----------|---------|
| [bootstrap-capabilities/ontology-sync/](/governance/templates/bootstrap-capabilities/ontology-sync/) | Ontology sync capability template |
| [bootstrap-capabilities/registry-sync/](/governance/templates/bootstrap-capabilities/registry-sync/) | Registry sync capability template |
| [bootstrap-capabilities/orchestrator/](/governance/templates/bootstrap-capabilities/orchestrator/) | Orchestrator capability template |

### Kilo Platform Templates

| Template | Purpose |
|----------|---------|
| [kilo/README.md](/governance/templates/kilo/README.md) | Kilo configuration guide |
| [kilo/command/](/governance/templates/kilo/command/) | Kilo command templates |
| [kilo/agent/](/governance/templates/kilo/agent/) | Kilo agent templates |
| [kilo/skills/](/governance/templates/kilo/skills/) | Kilo skill templates |
| [kilo/package.json](/governance/templates/kilo/package.json) | Kilo package manifest |
| [kilo/kilo.json](/governance/templates/kilo/kilo.json) | Kilo configuration |

### Documentation Templates

| Template | Purpose |
|----------|---------|
| [CHANGELOG-template.md](/governance/templates/CHANGELOG-template.md) | Changelog format |
| [package.template.json](/governance/templates/package.template.json) | Package manifest template |
| [project-manifest.template.json](/governance/templates/project-manifest.template.json) | Project manifest template |

## Usage

All new governance artifacts MUST use the appropriate template. Templates are located in `governance/templates/` and are copied to create new artifacts.

```bash
# Example: Create new AED
cp governance/templates/AED-template.md governance/directives/AED-00015.md

# Example: Create new ADR
cp governance/templates/ADR-template.md governance/decisions/ADR-00007.md
```

---

## Navigation

- [← Governance Domain](/governance/)
- [Directives (AEDs)](/governance/directives/)
- [Decisions (ADRs)](/governance/decisions/)
- [Execution Plans](/governance/execution/)