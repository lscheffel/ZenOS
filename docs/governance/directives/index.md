---
layout: governance
title: Directives (AEDs)
description: Architectural Enforcement Directives — constitutional governance rules.
domain: governance
collection: governance
collection_name: Architectural Enforcement Directives
category: directives
navigation_weight: 1
---

# Architectural Enforcement Directives (AEDs)

AEDs are the constitutional directives that govern platform behavior. They are normative, prescriptive, and establish the rules that all implementation must follow.

## All AEDs

| # | Directive | Title | Status |
|---|-----------|-------|--------|
| 1 | [AED-00001](/governance/directives/AED-00001/) | Architectural Vision | Active |
| 2 | [AED-00002](/governance/directives/AED-00002/) | Operating Model | Active |
| 3 | [AED-00003](/governance/directives/AED-00003/) | Canonical Ontology | Active |
| 4 | [AED-00004](/governance/directives/AED-00004/) | Knowledge Architecture | Active |
| 5 | [AED-00005](/governance/directives/AED-00005/) | Governance Architecture | Active |
| 6 | [AED-00006](/governance/directives/AED-00006/) | Capability Model | Active |
| 7 | [AED-00007](/governance/directives/AED-00007/) | Contract Specification | Active |
| 8 | [AED-00008](/governance/directives/AED-00008/) | Boot & Discovery | Active |
| 9 | [AED-00009](/governance/directives/AED-00009/) | Context Loading | Active |
| 10 | [AED-00010](/governance/directives/AED-00010/) | Repository Layout | Active |
| 11 | [AED-00011](/governance/directives/AED-00011/) | Compliance & Enforcement | Active |
| 12 | [AED-00012](/governance/directives/AED-00012/) | Change Management | Active |
| 13 | [AED-00013](/governance/directives/AED-00013/) | Exception Registry | Active |
| 14 | [AED-00014](/governance/directives/AED-00014/) | Health Metrics | Active |

## Authority Chain

```
AGENTS.md
  ↓
governance_manifest.md
  ↓
AEDs (THIS LAYER)
  ↓
Blueprints, Ontology, Document Authority, Platform Manifest, ...
  ↓
Implementation
```

## Key Principles

- **Lower layers conform to higher layers. Never the opposite.**
- **Governance authorizes execution. Execution never creates governance.**
- **A technically correct solution that violates governance is invalid.**

## Modification Process

To create, modify, or retire an AED:

1. Follow **AED-00012 (Change Management)**
2. Submit Change Proposal
3. Validate against all higher authority layers
4. Register exception if needed (AED-00013)
5. Update this index

---

## Navigation

- [← Governance Domain](/governance/)
- [Decisions (ADRs)](/governance/decisions/)
- [Templates](/governance/templates/)
- [Execution Plans](/governance/execution/)