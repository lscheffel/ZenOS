---
layout: knowledge
title: Canonical Ontology
domain: knowledge
---

# Canonical Ontology - ZenOS Template

## Domain Terms

### Authority
- The source of governance permissions
- Originates from: document-authority.json
- Flows through: AEDs → Contracts → Implementation

### Bootstrap
- The process of instantiating a governed project ecosystem
- Requires: AGENTS.md, governance_manifest.md, Manifest, Capabilities, Generators
- Produces: Initialized project state

### Capability
- First-class constitutional entity that owns assets
- Has: id, domain, owner, authority, inheritance, lifecycle, dependencies, assets, generators
- Owns: scripts, commands, documentation

### Contract
- Published interface specification
- Immutable once published
- Defines: inputs, outputs, behavior, constraints

### Domain
- Every artifact belongs to exactly one domain (A-F)
- Multiple-domain ownership is forbidden
- Domains: Platform, Governance Kernel, Project Cognition, Capabilities, Project Implementation, Runtime

### Governance
- Constitutional authority chain: AGENTS.md → governance_manifest.md → AEDs → Implementation
- Governs: architecture, ownership, lifecycle, compliance

### Ontology
- Canonical vocabulary
- Defined in: knowledge/ontology/canonical.md
- Proceeds implementation (AXIOM 01)

### Registry
- Inventory of capabilities and assets
- Location: REGISTRY.md
- Maintained via: registry-sync capability

### State
- Canonical machine-readable truth
- Location: governance/state/
- Proceeds documentation