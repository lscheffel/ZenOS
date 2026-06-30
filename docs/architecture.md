---
layout: default
title: Architecture
description: ZenOS architectural overview — domains, principles, and system design.
navigation_weight: 6
---

# ZenOS Architecture

ZenOS is a **Sovereign Governance Platform** — not a repository, not a framework, not a starter kit. It provisions governed project ecosystems while preserving governance integrity, ownership integrity, capability integrity, and institutional sovereignty.

---

## Constitutional Authority Chain

```
AGENTS.md
  ↓
governance/governance_manifest.md
  ↓
AEDs (Directives)
  ↓
Blueprints
  ↓
Ontology
  ↓
Document Authority Registry
  ↓
Platform Manifest
  ↓
Tool Registry
  ↓
Capability Registry
  ↓
Generator Registry
  ↓
Profiles
  ↓
Rules
  ↓
Implementation
```

Lower layers conform to higher layers. Never the opposite.

---

## Execution Priorities (Absolute Order)

```
1. Constitutional Integrity
2. Governance Compliance
3. Ontological Consistency
4. Architectural Integrity
5. Functional Preservation
6. Reversibility
7. Technical Excellence
8. Delivery
```

Delivery is never allowed to violate higher priorities.

---

## Domain Architecture (Governance Manifest §4)

Every artifact belongs to exactly one domain. Multiple-domain ownership is forbidden.

### Domain A — Platform (Reusable Capabilities)
- CLI, GUI, MCP, RAG
- Bootstrap Engine, Classification Engine, State Engine
- Reconciliation Engine, Discovery Engine
- Capability Registry, Generator Registry, Tool Registry
- *Platform-owned, inheritable, reusable, independently evolvable*

### Domain B — Governance Kernel (Constitutional)
- AEDs, STXs, Rules, Profiles, Templates
- Authority Models, Manifest, Policies
- *Platform-owned, canonical, inheritable*

### Domain C — Project Cognition (Institutional Memory)
- ADRs, Telemetry, Reports, Analysis
- Twins, Graphs, Roadmaps, Blueprints
- *Project-owned, generated, non-transferable*

### Domain D — Capabilities (Executable Behavior)
- Agents, Skills, Workflows, Validators, Generators, Templates
- *Modular, replaceable, governance-consuming*

### Domain E — Project Implementation (Business Logic)
- Source code, tests, documentation, releases
- *Project-owned, generated, implementation-specific*

### Domain F — Runtime (Transient State)
- Sessions, active tasks, working memory, temporary decisions
- *Ephemeral, disposable, never promoted*

---

## Capability Model (Governance Manifest §6)

Capabilities are first-class constitutional entities. Assets are secondary.

```text
Capability
  id
  domain
  owner
  authority
  inheritance
  lifecycle
  dependencies
  assets
  generators
```

**Capabilities own assets. Assets never own capabilities.**

---

## Bootstrap Sovereignty (Governance Manifest §12)

```
Manifest
  ↓
Capabilities
  ↓
Dependencies
  ↓
Generators
  ↓
Provisioning
```

Bootstrap provisions capabilities. Bootstrap never provisions identity, cognition, or history.

---

## Platform Evolution Laws

### Platform Evolution Law (§16)
Platform evolution must not require project modification.

```
Platform Upgrade
  ↓
Existing Projects
  ↓
Zero Mandatory Changes
```

### Project Evolution Law (§17)
Project evolution must not require platform modification.

```
Project Evolution
  ↓
No Platform Changes
```

---

## Sovereignty Test (Governance Manifest §20)

ZenOS is sovereign only if all conditions hold:

| Condition | Requirement |
|-----------|-------------|
| A | Deleting any generated project does not affect the platform |
| B | Deleting the originating repository does not affect generated projects |
| C | Platform evolution does not require project modification |
| D | Project evolution does not require platform modification |
| E | Historical identity never crosses bootstrap boundaries |
| F | Governance survives independently of cognition |
| G | Ontology remains stable regardless of implementation changes |
| H | Capabilities remain authoritative over assets |
| I | Authority remains centralized |
| J | Bootstrap remains capability-driven |

---

## Constitutional Axioms (Governance Manifest §3)

1. **Ontology precedes implementation** — Implementation never defines ontology
2. **Authority precedes ownership** — Ownership precedes lifecycle — Lifecycle precedes implementation
3. **Capabilities own assets** — Assets never define capabilities
4. **Governance authorizes execution** — Execution never creates governance
5. **Historical identity is never inherited**
6. **Project cognition is never inherited**
7. **Platform sovereignty is non-negotiable**
8. **A decision requires its complete set** — AED, ANL, Plan, TODO

---

## Document Authority Model (Governance Manifest §5)

Authority originates exclusively from `governance/document-authority.json`. It defines:
- Authority
- Ownership
- Lifecycle
- Inheritance
- Mutation rights

Authority may never be inferred, guessed, hardcoded, or path-derived.

---

## State Model (Governance Manifest §14)

Canonical machine-readable truth resides in `governance/state/`.

- State precedes documentation
- Documentation is projection
- Documentation may be regenerated from state
- State may never be regenerated from documentation

---

## Digital Twin Principle (Governance Manifest §15)

- The Twin represents architectural understanding
- The Twin is derived
- The Twin is not governance
- The Twin is not constitutional truth
- The Twin is continuously reconciled understanding

---

## Key Architectural Documents

| Document | Purpose |
|----------|---------|
| [AGENTS.md](/AGENTS.md) | Constitutional execution engine |
| [Governance Manifest](/governance/governance_manifest/) | Platform constitution |
| [AED-00001](/governance/directives/AED-00001/) | Architectural Vision |
| [AED-00003](/governance/directives/AED-00003/) | Canonical Ontology |
| [AED-00005](/governance/directives/AED-00005/) | Governance Architecture |
| [AED-00006](/governance/directives/AED-00006/) | Capability Model |
| [AED-00007](/governance/directives/AED-00007/) | Contract Specification |
| [AED-00008](/governance/directives/AED-00008/) | Boot & Discovery |
| [AED-00010](/governance/directives/AED-00010/) | Repository Layout |
| [Canonical Ontology](/knowledge/ontology/canonical/) | Vocabulary |