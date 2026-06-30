---
layout: default
title: Getting Started
description: Quick start guide for ZenOS — bootstrap, governance, and first contribution.
navigation_weight: 5
---

# Getting Started with ZenOS

This guide walks you through the constitutional boot sequence and your first governed contribution.

## Prerequisites

- Git
- Ruby 3.0+ (for local Jekyll development)
- Understanding of constitutional governance principles

---

## 1. Bootstrap Sequence

Per AGENTS.md, every execution must load the constitutional context in order:

```bash
# 1. Constitutional Identity
cat AGENTS.md

# 2. Governance Center
cat governance/governance_manifest.md

# 3. Directives (AEDs)
ls governance/directives/AED-*.md

# 4. Architectural Decisions (ADRs)
ls governance/decisions/ADR-*.md

# 5. Capability Registry
cat REGISTRY.md

# 6. Canonical Ontology
cat knowledge/ontology/canonical.md
```

---

## 2. Local Documentation Development

```bash
# Install dependencies
cd docs
bundle install

# Serve locally
bundle exec jekyll serve --livereload

# Visit http://localhost:4000/ZenOS/
```

---

## 3. Understanding the Domains

| Domain | Purpose | Entry Point |
|--------|---------|-------------|
| **A — Platform** | Reusable capabilities | [/capabilities/](/capabilities/) |
| **B — Governance** | Constitutional rules | [/governance/](/governance/) |
| **C — Knowledge** | Architectural understanding | [/knowledge/](/knowledge/) |
| **D — Capabilities** | Executable behavior | [/capabilities/](/capabilities/) |
| **E — Project** | Business implementation | [/repository/](/repository/) |
| **F — Runtime** | Transient state | [/runtime/](/runtime/) |

---

## 4. First Contribution Workflow

### Step 1: Classify Your Task

Determine:
- **Domain** (A–F)
- **Capability Type** (agent, skill, workflow, validator, generator, template)
- **Scope** (files affected, contracts touched)

### Step 2: Identify Authorizing Governance

Find the AED and Contract that authorize your change:

```bash
# Check AEDs
grep -l "your topic" governance/directives/AED-*.md

# Check Contracts
find capabilities -name "contract.md" -exec grep -l "your topic" {} \;
```

### Step 3: Verify Compliance Gates

Ensure no Hard Violations block execution (AED-00011).

### Step 4: Scope Confirmation

Before implementing:
- New files? → Scope Confirmation Gate
- Schema changes? → Scope Confirmation Gate
- Dependency additions? → Scope Confirmation Gate
- API contract changes? → Scope Confirmation Gate

### Step 5: Implement

Follow Code Generation Standards (AGENTS.md CG-01 through CG-10).

### Step 6: Verify

```bash
# Build documentation
cd docs && bundle exec jekyll build

# Run linting (if configured)
# Run tests (if applicable)
```

### Step 7: Produce Artifacts

| Activity | Required Artifact | Location |
|----------|-------------------|----------|
| Architectural decision | ADR | `governance/decisions/` |
| New capability | Contract | `capabilities/{type}/` |
| Governance change | Change Proposal → AED | `governance/directives/` |
| Governance exception | Exception Record | `governance/exceptions/` |
| Bug root cause | Analysis | `runtime/analysis/` |
| Significant refactor | AED + Test evidence | `governance/decisions/` |

---

## 5. Key Commands

```bash
# Validate governance
./scripts/validate-governance.sh

# Sync registry
./scripts/registry-sync.sh

# Sync ontology
./scripts/ontology-sync.sh

# Bootstrap new project
./scripts/bootstrap.sh --profile=minimal
```

---

## 6. Learning Resources

- [Governance Manifest](/governance/governance_manifest/) — Platform constitution
- [AED-00001](/governance/directives/AED-00001/) — Architectural Vision
- [AED-00012](/governance/directives/AED-00012/) — Change Management
- [Canonical Ontology](/knowledge/ontology/canonical/) — Vocabulary
- [ADR-00001](/governance/decisions/ADR-00001/) — Domain Separation example

---

## 7. Getting Help

- **Documentation Issues**: [GitHub Issues](https://github.com/lscheffel/ZenOS/issues)
- **Governance Questions**: [GitHub Discussions](https://github.com/lscheffel/ZenOS/discussions)
- **Constitutional Clarification**: Consult AGENTS.md and governance_manifest.md first