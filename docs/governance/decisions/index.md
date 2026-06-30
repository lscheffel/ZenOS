---
layout: governance
title: Decisions (ADRs)
description: Architectural Decision Records — project-specific architectural decisions.
domain: governance
collection: governance
collection_name: Architectural Decision Records
category: decisions
navigation_weight: 2
---

# Architectural Decision Records (ADRs)

ADRs document project-specific architectural decisions. They belong to Domain C (Project Cognition) — institutional memory that is project-owned, generated, and non-transferable.

## All ADRs

| # | Decision | Title | Status |
|---|----------|-------|--------|
| 1 | [ADR-00001](/governance/decisions/ADR-00001/) | Domain Separation | Accepted |
| 2 | [ADR-00002](/governance/decisions/ADR-00002/) | Orchestrator Refactoring | Accepted |
| 3 | [ADR-00003](/governance/decisions/ADR-00003/) | Registry Sync Capability | Accepted |
| 4 | [ADR-00004](/governance/decisions/ADR-00004/) | Ontology Sync Capability | Accepted |
| 5 | [ADR-00005](/governance/decisions/ADR-00005/) | Template Reconciliation | Accepted |
| 6 | [ADR-00006](/governance/decisions/ADR-00006/) | Documentation Platform Migration | Proposed |

## ADR Lifecycle

```
Proposed → Accepted → Superseded (or Retired)
```

- **Proposed**: Under review, not yet authorized
- **Accepted**: Authorized, governs implementation
- **Superseded**: Replaced by newer ADR
- **Retired**: Obsolete without replacement

## Relationship to AEDs

- **AEDs** (Domain B): Platform-level, constitutional, inheritable
- **ADRs** (Domain C): Project-level, generated, non-transferable

> **Governance authorizes execution. Execution never creates governance.**

ADRs implement AEDs. They cannot contradict AEDs.

## Execution Plans

Each ADR may have an associated execution roadmap:

| ADR | Execution Plan |
|-----|----------------|
| ADR-00006 | [TODO-ADR-00006](/governance/execution/TODO-ADR-00006/) |

---

## Navigation

- [← Governance Domain](/governance/)
- [Directives (AEDs)](/governance/directives/)
- [Templates](/governance/templates/)
- [Execution Plans](/governance/execution/)