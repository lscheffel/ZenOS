---
layout: knowledge
title: Ontology
description: Canonical vocabulary and term definitions.
domain: knowledge
collection: knowledge
collection_name: Ontology
category: ontology
navigation_weight: 1
---

# Ontology

The Ontology collection contains the canonical vocabulary for ZenOS. No implementation may introduce undefined concepts.

> **Ontology precedes implementation. Implementation never defines ontology.** (Governance Manifest: AXIOM 01)

## Canonical Vocabulary

| Document | Description |
|----------|-------------|
| [canonical.md](/knowledge/ontology/canonical/) | Single source of truth for all domain terms |

## Structure

```
knowledge/ontology/
├── canonical.md          # Canonical vocabulary (authoritative)
├── terms/                # Individual term definitions (future)
├── relationships/        # Term relationships & mappings (future)
└── mappings/             # Cross-domain mappings (future)
```

## Key Principles

1. **Single Source of Truth** — Each term has exactly one canonical definition
2. **No Undefined Concepts** — Implementation cannot use terms not in ontology
3. **Cross-Domain Consistency** — Terms used consistently across all domains
4. **Versioned Evolution** — Ontology changes require governance process

## Usage

All documentation, code, and governance artifacts MUST use vocabulary from the canonical ontology. When a new concept is needed:

1. Propose term addition via AED-00012 Change Management
2. Add to canonical.md with definition, domain, and relationships
3. Update all dependent artifacts

## Current Terms (from canonical.md)

Core domains: Platform, Governance Kernel, Project Cognition, Capabilities, Project Implementation, Runtime

Key concepts: Capability, Asset, Generator, Contract, Manifest, Registry, Authority, Ontology, Sovereignty, Bootstrap, Domain, AED, ADR, ADR, ANL, Blueprint, State, Twin

---

## Navigation

- [← Knowledge Domain](/knowledge/)
- [Specifications](/knowledge/specifications/)
- [Glossary](/knowledge/glossary/)
- [Patterns](/knowledge/patterns/)