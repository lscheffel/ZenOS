---
layout: runtime
title: Runtime
description: Transient operational state — sessions, analysis, and working memory.
domain: runtime
collection: runtime
collection_name: Runtime Artifacts
navigation_weight: 4
---

# Runtime Domain

The Runtime domain contains transient operational state — ephemeral, disposable artifacts that are never promoted to permanent knowledge. This is the working memory of the platform during active execution.

## Structure

```
runtime/
├── session/        # Active session handoffs
├── analysis/       # Working analysis artifacts
├── tasks/          # Active task tracking
├── state/          # Working state snapshots
└── decisions/      # Temporary decisions pending governance
```

## Runtime Characteristics

> **Ephemeral, disposable, never promoted to permanent knowledge.** (Governance Manifest, Domain F)

| Characteristic | Description |
|----------------|-------------|
| **Transient** | Exists only during active execution |
| **Disposable** | Can be deleted without loss of institutional memory |
| **Non-promotable** | Never becomes Domain C (Project Cognition) |
| **Working Memory** | Active context for agents and orchestrators |

## Current Artifacts

### Analysis — `runtime/analysis/`

| Artifact | Purpose |
|----------|---------|
| [Documentation Inventory](/runtime/analysis/documentation-inventory/) | Wave 0 Task 0.1 deliverable |
| [Navigation Graph](/runtime/analysis/navigation-graph/) | Wave 0 Task 0.1 deliverable |
| [Dependency Graph](/runtime/analysis/dependency-graph/) | Wave 0 Task 0.1 deliverable |
| [GitHub Pages Assessment](/runtime/analysis/github-pages-assessment/) | Wave 0 Task 0.2 deliverable |
| [Legacy Artifact Inventory](/runtime/analysis/legacy-artifact-inventory/) | Wave 0 Task 0.3 deliverable |

### Sessions — `runtime/session/`

*Future: Session handoff records per Coordination Rule C-04*

## Runtime Protocol

Per AGENTS.md Multi-Agent Coordination Protocol:

> **C-04 Session Handoff:** When handing off work between agent sessions, write a session handoff to `runtime/session/`. Record: what was completed, what remains, decisions made, exceptions registered, current Compliance Score.

## Navigation

- [← Back to Homepage](/)
- [Governance Domain](/governance/)
- [Knowledge Domain](/knowledge/)
- [Capabilities Domain](/capabilities/)

---

## Cross Navigation

| Direction | Link |
|-----------|------|
| Previous | [← Capabilities Domain](/capabilities/) |
| Next | [Homepage →](/)
| Related | [Getting Started](/getting-started/), [Architecture](/architecture/), [Governance Domain](/governance/) |