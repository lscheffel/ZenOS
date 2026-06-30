---
layout: knowledge
title: Knowledge
description: Architectural understanding — specifications, ontology, and glossaries.
domain: knowledge
collection: knowledge
collection_name: Knowledge Artifacts
navigation_weight: 2
---

# Knowledge Domain

The Knowledge domain contains architectural understanding — permanent, composable, implementation-independent artifacts that define the platform's conceptual framework.

## Structure

```
knowledge/
├── ontology/           # Canonical vocabulary & terms
├── specifications/     # Technical specifications
├── glossary/           # Term definitions
├── patterns/           # Architectural patterns
├── history/            # Historical decisions & context
└── blueprints/         # Architectural blueprints
```

## Collections

### Ontology — `knowledge/ontology/`

| Document | Description |
|----------|-------------|
| [Canonical Ontology](/knowledge/ontology/canonical/) | Canonical vocabulary — no implementation may introduce undefined concepts |

### Specifications — `knowledge/specifications/`

*Future: Technical specifications for platform capabilities*

### Glossary — `knowledge/glossary/`

*Future: Term definitions aligned with canonical ontology*

### Patterns — `knowledge/patterns/`

*Future: Documented architectural patterns*

### History — `knowledge/history/`

*Future: Preserved historical decisions and context*

### Blueprints — `knowledge/blueprints/`

*Future: Architectural blueprints for platform capabilities*

## Knowledge Principles

> **Ontology precedes implementation.** Implementation never defines ontology. (Governance Manifest: AXIOM 01)

> **State precedes documentation.** Documentation is projection. Documentation may be regenerated from state. State may never be regenerated from documentation. (Governance Manifest: #14)

## Current Artifacts

- **Canonical Ontology** — Single source of truth for all domain vocabulary
- **Governance Manifest** — Platform constitution (also in Governance domain)
- **AEDs/ADRs** — Architectural decisions (cross-referenced in Governance domain)

## Navigation

- [← Back to Homepage](/)
- [Governance Domain](/governance/)
- [Capabilities Domain](/capabilities/)
- [Runtime Domain](/runtime/)

---

## Cross Navigation

| Direction | Link |
|-----------|------|
| Previous | [← Governance Domain](/governance/) |
| Next | [Capabilities Domain →](/capabilities/) |
| Related | [Homepage](/), [Getting Started](/getting-started/), [Architecture](/architecture/) |