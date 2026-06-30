---
layout: governance
title: Execution Plans
description: Wave-based implementation roadmaps for architectural decisions.
domain: governance
collection: governance
collection_name: Execution Roadmaps
category: execution
navigation_weight: 4
---

# Execution Plans (TODOs)

Execution plans orchestrate the implementation of Architectural Decision Records (ADRs). They define Waves, Tasks, Agents, Deliverables, and Validation Gates.

## Active Execution Plans

| Plan | Implements | Status | Progress |
|------|------------|--------|----------|
| [TODO-ADR-00006](/governance/execution/TODO-ADR-00006/) | ADR-00006 (Documentation Platform Migration) | In Progress | Wave 2/6 |

## Execution Model

Per TODO-ADR-00006, execution follows a Wave-based model:

```
Wave 0: Repository Assessment
  ↓ Validation Gate A
Wave 1: Infrastructure Modernization
  ↓ Validation Gate B
Wave 2: Information Architecture
  ↓ Validation Gate C
Wave 3: Navigation Refactoring
  ↓ Validation Gate D
Wave 4: Documentation Refinement
  ↓ Validation Gate E
Wave 5: Quality Assurance
  ↓ Validation Gate F
Wave 6: Finalization
  ↓ Validation Gate G
```

## Execution Rules

- Execute one Wave at a time
- Complete every Validation Gate before advancing
- Preserve deterministic builds
- Commit after every completed Task
- Maintain rollback capability after every Wave
- Validate repository integrity continuously

## Validation Gates

| Gate | Wave | Criteria |
|------|------|----------|
| A | 0 | Documentation inventory complete, dependency graph generated, legacy artifacts identified |
| B | 1 | Build passes, deployment succeeds, configuration validated |
| C | 2 | Homepage implemented, domain landing pages created, navigation hierarchy operational |
| D | 3 | Zero broken links, zero orphan pages, internal navigation independent from GitHub |
| E | 4 | Documentation normalized, cross-navigation complete |
| F | 5 | Markdown validated, accessibility validated, responsive validation completed |
| G | 6 | Production deployment successful, repository clean, documentation operational |

## Task Structure

Each Task defines:
- **Title** — What is being done
- **Primary Agent** — Responsible role
- **Supporting Agents** — Auxiliary roles
- **Deliverables** — Concrete outputs
- **Status** — Checkbox for tracking

---

## Navigation

- [← Governance Domain](/governance/)
- [Directives (AEDs)](/governance/directives/)
- [Decisions (ADRs)](/governance/decisions/)
- [Templates](/governance/templates/)