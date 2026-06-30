---
layout: governance
title: Governance
description: Constitutional governance kernel — directives, decisions, and enforcement.
domain: governance
collection: governance
collection_name: Governance Artifacts
navigation_weight: 1
---

# Governance Domain

The Governance Kernel is the constitutional authority of ZenOS. It contains all normative artifacts that govern platform behavior, evolution, and compliance.

## Structure

```
governance/
├── directives/     # Architectural Enforcement Directives (AEDs)
├── decisions/      # Architectural Decision Records (ADRs)
├── templates/      # Governance artifact templates
├── execution/      # Execution roadmaps (TODOs)
├── reports/        # Analysis & reconciliation reports
├── exceptions/     # Governance exception registry
├── state/          # Canonical machine-readable state
├── platform/       # Capability registry
├── config/         # Orchestrator configuration
└── document-authority.json
```

## Collections

### Directives (AEDs) — `governance/directives/`

14 Architectural Enforcement Directives establishing the constitutional framework:

| AED | Title | Status |
|-----|-------|--------|
| [AED-00001](/governance/directives/AED-00001/) | Architectural Vision | Active |
| [AED-00002](/governance/directives/AED-00002/) | Operating Model | Active |
| [AED-00003](/governance/directives/AED-00003/) | Canonical Ontology | Active |
| [AED-00004](/governance/directives/AED-00004/) | Knowledge Architecture | Active |
| [AED-00005](/governance/directives/AED-00005/) | Governance Architecture | Active |
| [AED-00006](/governance/directives/AED-00006/) | Capability Model | Active |
| [AED-00007](/governance/directives/AED-00007/) | Contract Specification | Active |
| [AED-00008](/governance/directives/AED-00008/) | Boot & Discovery | Active |
| [AED-00009](/governance/directives/AED-00009/) | Context Loading | Active |
| [AED-00010](/governance/directives/AED-00010/) | Repository Layout | Active |
| [AED-00011](/governance/directives/AED-00011/) | Compliance & Enforcement | Active |
| [AED-00012](/governance/directives/AED-00012/) | Change Management | Active |
| [AED-00013](/governance/directives/AED-00013/) | Exception Registry | Active |
| [AED-00014](/governance/directives/AED-00014/) | Health Metrics | Active |

### Decisions (ADRs) — `governance/decisions/`

Architectural Decision Records documenting project-specific decisions:

| ADR | Title | Status |
|-----|-------|--------|
| [ADR-00001](/governance/decisions/ADR-00001/) | Domain Separation | Accepted |
| [ADR-00002](/governance/decisions/ADR-00002/) | Orchestrator Refactoring | Accepted |
| [ADR-00003](/governance/decisions/ADR-00003/) | Registry Sync Capability | Accepted |
| [ADR-00004](/governance/decisions/ADR-00004/) | Ontology Sync Capability | Accepted |
| [ADR-00005](/governance/decisions/ADR-00005/) | Template Reconciliation | Accepted |
| [ADR-00006](/governance/decisions/ADR-00006/) | Documentation Platform Migration | Proposed |

### Execution Plans — `governance/execution/`

Wave-based implementation roadmaps:

| Plan | Implements | Status |
|------|------------|--------|
| [TODO-ADR-00006](/governance/execution/TODO-ADR-00006/) | ADR-00006 | In Progress |

## Key Artifacts

- **[Governance Manifest](/governance/governance_manifest/)** — Platform constitution, axioms, capability model
- **[Document Authority Registry](/governance/document-authority/)** — Authority, ownership, lifecycle per artifact
- **[Capability Registry](/governance/platform/capability-registry/)** — Authoritative capability inventory

## Governance Principles

> **Governance authorizes execution. Execution never creates governance.** (AGENTS.md:114-118)

All changes to governance artifacts require the AED-00012 Change Management process.

---

## Cross Navigation

| Direction | Link |
|-----------|------|
| Previous | [← Knowledge Domain](/knowledge/) |
| Next | [Capabilities Domain →](/capabilities/) |
| Related | [Homepage](/), [Getting Started](/getting-started/), [Architecture](/architecture/) |