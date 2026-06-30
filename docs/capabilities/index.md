---
layout: capabilities
title: Capabilities
description: Executable behavior — agents, skills, workflows, and validators.
domain: capabilities
collection: capabilities
collection_name: Capabilities
navigation_weight: 3
---

# Capabilities Domain

Capabilities are first-class constitutional entities — modular, replaceable, governance-consuming units of executable behavior. Every capability owns its assets and must be registered in the Capability Registry.

## Structure

```
capabilities/
├── agents/         # AI agent definitions
├── skills/         # Specialized skill implementations
├── workflows/      # Multi-step workflow orchestrations
├── validators/     # Compliance & quality validators
├── generators/     # Artifact generators
└── templates/      # Capability templates
```

## Capability Model (per AED-00006)

Every capability must possess:

```text
id              # Unique identifier
domain          # Domain ownership (A-F)
owner           # Responsible entity
authority       # Governance authority
inheritance     # Inheritance model
lifecycle       # Lifecycle definition
dependencies    # Capability dependencies
assets          # Owned assets
generators      # Associated generators
```

> **Capabilities own assets. Assets never own capabilities.** (Governance Manifest, §6)

## Registered Capabilities

| Capability | Domain | Status | Contract |
|------------|--------|--------|----------|
| [ontology-sync](/capabilities/ontology-sync/) | D | Active | [contract.md](/capabilities/ontology-sync/contract/) |
| [registry-sync](/capabilities/registry-sync/) | D | Active | [contract.md](/capabilities/registry-sync/contract/) |

## Capability Registry

The [Capability Registry](/governance/platform/capability-registry/) is constitutional — it represents the authoritative inventory of platform capabilities. Capabilities without registration are invalid.

## Bootstrap Provisioning

Capabilities are provisioned through the bootstrap engine:

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

*See [Bootstrap Script](/scripts/bootstrap.sh) and [AED-00008](/governance/directives/AED-00008/) for details.*

## Capability Templates

Standard templates in `governance/templates/bootstrap-capabilities/`:
- `ontology-sync/` — Ontology synchronization capability
- `registry-sync/` — Registry synchronization capability
- `orchestrator/` — Orchestration capability (template)

## Navigation

- [← Back to Homepage](/)
- [Governance Domain](/governance/)
- [Knowledge Domain](/knowledge/)
- [Runtime Domain](/runtime/)

---

## Cross Navigation

| Direction | Link |
|-----------|------|
| Previous | [← Knowledge Domain](/knowledge/) |
| Next | [Runtime Domain →](/runtime/) |
| Related | [Homepage](/), [Getting Started](/getting-started/), [Architecture](/architecture/) |