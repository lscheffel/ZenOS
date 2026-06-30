---
layout: default
title: Repository
description: Repository guide — structure, conventions, and development workflow.
navigation_weight: 7
---

# Repository Guide

This document describes the ZenOS repository structure, conventions, and development workflow for contributors.

---

## Repository Layout (per AED-00010)

```
ZenOS/
├── AGENTS.md                    # Constitutional execution engine
├── REGISTRY.md                  # Capability & generator registry
├── governance/                  # Domain B: Governance Kernel
│   ├── governance_manifest.md   # Platform constitution
│   ├── directives/              # AEDs (14)
│   ├── decisions/               # ADRs
│   ├── execution/               # TODO roadmaps
│   ├── templates/               # Governance templates
│   ├── reports/                 # Analysis reports
│   ├── exceptions/              # Exception registry
│   ├── state/                   # Canonical state
│   ├── platform/                # Capability registry
│   ├── config/                  # Orchestrator config
│   └── document-authority.json  # Authority registry
├── knowledge/                   # Domain C: Project Cognition
│   └── ontology/                # Canonical vocabulary
├── capabilities/                # Domain D: Capabilities
│   ├── ontology-sync/
│   └── registry-sync/
├── runtime/                     # Domain F: Runtime State
│   ├── session/
│   ├── analysis/
│   └── tasks/
├── docs/                        # Domain E: Documentation Portal
│   ├── _config.yml              # Jekyll configuration
│   ├── _layouts/                # Page layouts
│   ├── _includes/               # Partial templates
│   ├── _sass/                   # Stylesheets
│   ├── governance/              # Governance collection
│   ├── knowledge/               # Knowledge collection
│   ├── capabilities/            # Capabilities collection
│   ├── runtime/                 # Runtime collection
│   ├── index.md                 # Homepage
│   ├── getting-started.md       # Quick start
│   ├── architecture.md          # Architecture overview
│   └── repository.md            # This file
├── scripts/                     # Operational scripts
│   ├── bootstrap.sh             # Platform bootstrap
│   ├── registry-sync.sh         # Registry synchronization
│   └── ontology-sync.sh         # Ontology synchronization
├── .github/                     # GitHub configuration
│   └── workflows/               # CI/CD workflows
├── .kilo/                       # Kilo platform configuration
└── README.md                    # Repository README
```

---

## Development Workflow

### 1. Governance-First Execution

Per AGENTS.md, every task follows:

```
RECEIVE TASK
  ↓
LOAD CONSTITUTION (Stages 1-3)
  ↓
CLASSIFY TASK
  ↓
IDENTIFY AUTHORIZING GOVERNANCE
  ↓
CHECK ENFORCEMENT GATES
  ↓
CONFIRM SCOPE
  ↓
VERIFY CONTRACTS
  ↓
IMPLEMENT
  ↓
VERIFY TESTS
  ↓
UPDATE ARTIFACTS
  ↓
COMPUTE COMPLIANCE IMPACT
  ↓
COMPLETE
```

### 2. Scope Confirmation Gate

Before implementing changes involving:
- New files
- Schema changes
- Dependency additions
- API contract changes
- Capability creation/removal
- Governance artifact modification

State complete scope and request confirmation.

### 3. Code Generation Standards

Generated code must satisfy CG-01 through CG-10 (AGENTS.md).

---

## Key Scripts

| Script | Purpose |
|--------|---------|
| `scripts/bootstrap.sh` | Provision capabilities via manifest |
| `scripts/registry-sync.sh` | Update REGISTRY.md from repository |
| `scripts/ontology-sync.sh` | Extract terms from ADRs to ontology |

---

## Git Conventions

### Commit Format

```
<domain>(<adr-id>): <task summary>
```

Examples:
```
docs(adr-00006): normalize jekyll configuration
governance(adr-00006): create governance landing page
capabilities(adr-00003): implement registry-sync contract
```

### Branch Naming

```
<domain>/<short-description>
```

Examples:
```
docs/jekyll-config-normalization
governance/aed-00015-proposal
capabilities/new-validator-agent
```

---

## Documentation Standards

- All documentation in `docs/` (Jekyll/GitHub Pages)
- Use relative links for internal navigation
- Follow ADR-00006 Link Strategy
- Domain-oriented organization (not filesystem)

---

## Compliance Verification

Every change must pass all gates (AGENTS.md):

- GATE-01: Constitutional Compliance
- GATE-02: Ontology Compliance
- GATE-03: Ownership Compliance
- GATE-04: Contract Compliance
- GATE-05: Functional Preservation
- GATE-06: Test Coverage
- GATE-07: Artifact Completeness
- GATE-08: No Hard Violations
- GATE-09: Scope Confirmed
- GATE-10: Reversibility Documented

---

## Useful Commands

```bash
# Validate governance
./scripts/validate-governance.sh

# Build documentation locally
cd docs && bundle exec jekyll serve

# Sync registry
./scripts/registry-sync.sh

# Sync ontology
./scripts/ontology-sync.sh

# Bootstrap new project
./scripts/bootstrap.sh --profile=minimal
```

---

## Navigation

- [← Back to Homepage](/)
- [Getting Started](/getting-started/)
- [Architecture](/architecture/)
- [Governance Domain](/governance/)
- [Knowledge Domain](/knowledge/)
- [Capabilities Domain](/capabilities/)
- [Runtime Domain](/runtime/)