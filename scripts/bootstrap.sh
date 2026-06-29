#!/bin/bash
# ZenOS Bootstrap Script
# Instancia um novo projeto a partir do template ZenOS

set -e

# Verificar argumentos
if [ -z "$1" ]; then
    echo "Usage: ./bootstrap.sh <project_name> [target_directory]"
    echo "  project_name: Nome do novo projeto"
    echo "  target_directory: Onde criar o projeto (default: ./)"
    exit 1
fi

PROJECT_NAME="$1"
TARGET_DIR="${2:-.}"

# Caminho absoluto do template
TEMPLATE_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

# Verificar se já existe
if [ -d "$TARGET_DIR/$PROJECT_NAME" ]; then
    echo "Error: $TARGET_DIR/$PROJECT_NAME already exists"
    exit 1
fi

echo "=== ZenOS Bootstrappping ==="
echo "Template: $TEMPLATE_ROOT"
echo "Projeto: $PROJECT_NAME"
echo "Destino: $TARGET_DIR/$PROJECT_NAME"

# Criar estrutura de diretórios (raiz = Domain E - projeto autônomo)
mkdir -p "$TARGET_DIR/$PROJECT_NAME"/{knowledge,knowledge/ontology,knowledge/decisions,runtime,runtime/session,runtime/analysis,governance,governance/directives,governance/state,governance/exceptions,governance/templates,capabilities}

# Instalar constituição
cp "$TEMPLATE_ROOT/AGENTS.md" "$TARGET_DIR/$PROJECT_NAME/"
cp "$TEMPLATE_ROOT/governance/governance_manifest.md" "$TARGET_DIR/$PROJECT_NAME/governance/"
cp -r "$TEMPLATE_ROOT/governance/directives/" "$TARGET_DIR/$PROJECT_NAME/governance/"
cp "$TEMPLATE_ROOT/.gitignore" "$TARGET_DIR/$PROJECT_NAME/"
cp -r "$TEMPLATE_ROOT/.kilo/" "$TARGET_DIR/$PROJECT_NAME/.kilo/"

# Create orchestrator config
mkdir -p "$TARGET_DIR/$PROJECT_NAME/governance/config"
cp "$TEMPLATE_ROOT/governance/config/orchestrator-paths.json" "$TARGET_DIR/$PROJECT_NAME/governance/config/"

# Copy template artifacts for project use (keep as reference)
mkdir -p "$TARGET_DIR/$PROJECT_NAME/governance/templates"
cp "$TEMPLATE_ROOT/governance/templates/ADR-template.md" "$TARGET_DIR/$PROJECT_NAME/governance/templates/"
cp "$TEMPLATE_ROOT/governance/templates/BP-template.md" "$TARGET_DIR/$PROJECT_NAME/governance/templates/"
cp "$TEMPLATE_ROOT/governance/templates/TODO-template.md" "$TARGET_DIR/$PROJECT_NAME/governance/templates/"
cp "$TEMPLATE_ROOT/governance/templates/RM-template.md" "$TARGET_DIR/$PROJECT_NAME/governance/templates/"
cp "$TEMPLATE_ROOT/governance/templates/STATE-TEMPLATE.md" "$TARGET_DIR/$PROJECT_NAME/governance/templates/"
cp "$TEMPLATE_ROOT/governance/templates/project-manifest.template.json" "$TARGET_DIR/$PROJECT_NAME/governance/templates/" 2>/dev/null || true
cp "$TEMPLATE_ROOT/governance/templates/package.template.json" "$TARGET_DIR/$PROJECT_NAME/governance/templates/" 2>/dev/null || true
cp "$TEMPLATE_ROOT/governance/templates/CHANGELOG-template.md" "$TARGET_DIR/$PROJECT_NAME/governance/templates/" 2>/dev/null || true

# Compute timestamp first
TIMESTAMP=$(date -Iseconds 2>/dev/null || date +%Y-%m-%dT%H:%M:%S%z)

# Generate minimal CHANGELOG.md
cat > "$TARGET_DIR/$PROJECT_NAME/CHANGELOG.md" << EOF
# CHANGELOG

Initial state - populated during project evolution.

## [Unreleased]

## [0.1.0] - $TIMESTAMP

### Added
- Project bootstrapped via ZenOS template (v5.0)
- Governance structure initialized (Domains A-F)
- .kilo orchestration configured
EOF

# Copy registry-sync capability (bootstrap-installed capability)
mkdir -p "$TARGET_DIR/$PROJECT_NAME/capabilities/registry-sync"
cp -r "$TEMPLATE_ROOT/governance/templates/bootstrap-capabilities/registry-sync/"* "$TARGET_DIR/$PROJECT_NAME/capabilities/registry-sync/" 2>/dev/null || true

# Copy ontology-sync capability (bootstrap-installed capability)
mkdir -p "$TARGET_DIR/$PROJECT_NAME/capabilities/ontology-sync"
cp -r "$TEMPLATE_ROOT/governance/templates/bootstrap-capabilities/ontology-sync/"* "$TARGET_DIR/$PROJECT_NAME/capabilities/ontology-sync/" 2>/dev/null || true

# Generate minimal package.json
cat > "$TARGET_DIR/$PROJECT_NAME/package.json" << EOF
{
  "name": "$PROJECT_NAME",
  "version": "0.1.0",
  "description": "Governed project bootstrapped from ZenOS template",
  "scripts": {
    "test": "echo 'TODO: configure tests'",
    "validate:manifest": "echo 'TODO: implement manifest validation'",
    "validate:generated": "echo 'TODO: implement generated validation'",
    "security:scan": "echo 'TODO: implement security scan'",
    "registry:sync": "bash capabilities/registry-sync/registry-sync.sh",
    "ontology:sync": "bash capabilities/ontology-sync/ontology-sync.sh"
  },
  "engines": {
    "node": ">=18.0.0"
  }
}
EOF

# Criar arquivos iniciais
echo "=== Creating initial governance artifacts ==="

# Generate minimal STATE.md (will be populated during project evolution)
cat > "$TARGET_DIR/$PROJECT_NAME/STATE.md" << EOF
# STATE.md - Project State Snapshot

**Status:** BOOTSTRAPPED | **Lifecycle:** Bootstrapping Complete

> **[CORE DIRECTIVE]**
> This document represents the canonical project state. Initially populated after bootstrap.

## 1. Temporal Coordinates
- **Bootstrap:** $TIMESTAMP
- **Version:** 0.1.0-bootstrap

## 2. Repository Layers
| Layer | Status |
|-------|--------|
| Root (Domain E - Project) | ✅ Initialized |
| Domain B - Governance | ✅ Stable |
| Domain C - Knowledge | ✅ Initialized |
| Domain D - Capabilities | ✅ Bootstrapped |
| Domain F - Runtime | ✅ Ephemeral |

## 3. Execution State
- **Compliance Score:** 0
- **Bootstrapped Capabilities:** registry-sync, ontology-sync
- **Pending:** Define project ontology, Create ADR-00001

## 4. Handoff Status
Bootstrapped. Ready for project-driven evolution.
EOF

# Document Authority Registry (vazio, pronto para preenchimento)
cat > "$TARGET_DIR/$PROJECT_NAME/governance/document-authority.json" << 'EOF'
{
  "version": "1.0",
  "registry": {
    "AGENTS.md": {
      "id": "CONSTITUTION",
      "domain": "B",
      "authority": "SUPREME",
      "mutable": false,
      "owner": "platform",
      "lifecycle": "immutable"
    },
    "governance_manifest.md": {
      "id": "MANIFEST",
      "domain": "B",
      "authority": "HIGH",
      "mutable": "AED-00012",
      "owner": "platform",
      "lifecycle": "governed"
    }
  }
}
EOF

# State inicial
cat > "$TARGET_DIR/$PROJECT_NAME/governance/state/initial_state.json" << EOF
{
  "state_version": "1.0",
  "project_name": "$PROJECT_NAME",
  "created_at": "$TIMESTAMP",
  "status": "BOOTSTRAPPED",
  "domains_initialized": {
    "A": true,
    "B": true,
    "C": true,
    "D": true,
    "E": false,
    "F": true
  },
  "capabilities_deployed": ["registry-sync", "ontology-sync"],
  "compliance_score": 0,
  "next_steps": [
    "Define project-specific ontology in knowledge/ontology/canonical.md",
    "Create ADR-00001 for project vision",
    "Run npm run registry:sync after adding capabilities"
  ]
}
EOF

# Ontologia canônica mínima (template)
cat > "$TARGET_DIR/$PROJECT_NAME/knowledge/ontology/canonical.md" << 'EOF'
# Canonical Ontology

## Domain Terms

### Bootstrap
- The process of instantiating a governed project ecosystem
- Requires: Manifest, Capabilities, Generators
- Produces: Initialized project state

### Capability
- First-class constitutional entity that owns assets
- Has: id, domain, owner, authority, inheritance, lifecycle, dependencies, assets, generators

### Contract
- Published interface specification
- Immutable once published
- Defines: inputs, outputs, behavior, constraints

### ADR
- Architectural Decision Record
- Required for: architectural decisions, capability changes, governance exceptions
- Location: knowledge/decisions/

### State
- Canonical machine-readable truth
- Location: governance/state/
- Proceeds documentation
EOF

# ADR template
cat > "$TARGET_DIR/$PROJECT_NAME/knowledge/decisions/ADR-00000-template.md" << 'EOF'
# ADR-NNNNN: [Título da Decisão]

## Status
[SUGGESTED | APPROVED | REJECTED | SUPERSEDED]

## Domain Terms
[List domain-specific terms introduced by this decision]

## Context
[Descrição do problema ou oportunidade]

## Decision
[A decisão arquitetural tomada]

## Authority
[AED-NNNNN Section X / Contract ID]

## Rationale
[Justificativa que liga a decisão à autoridade]

## Consequences
[Impactos positivos e negativos]

## Implementation
[O que precisa ser feito]

## Tags
[#tag1 #tag2]
EOF

# Registry inicial
cat > "$TARGET_DIR/$PROJECT_NAME/REGISTRY.md" << 'EOF'
# Project Registry

## Capabilities
[Nenhuma capability registrada]

## Generators
[Nenhum generator registrado]

## Assets
[Nenhum asset registrado]

## Status: BOOTSTRAPPED
EOF

# README do projeto bootstrapeado (raiz = Domain E)
cat > "$TARGET_DIR/$PROJECT_NAME/README.md" << EOF
# $PROJECT_NAME

Governed project bootstrapped from ZenOS template.

## Quick Start

1. Load governance: Read AGENTS.md and governance/governance_manifest.md
2. Register capabilities in capabilities/
3. Define ontology in knowledge/ontology/
4. Create ADRs in knowledge/decisions/ for architectural decisions

## Structure

- governance/     # Constitutional governance (Domain B)
- knowledge/       # Project cognition (Domain C)
- capabilities/    # Executable capabilities (Domain D)
- runtime/         # Transient operational state (Domain F)
- .kilo/           # Agent orchestration (infrastructure)
- REGISTRY.md      # Capability/asset registry

Bootstrap completed: $TIMESTAMP
EOF

# Runtime README
cat > "$TARGET_DIR/$PROJECT_NAME/runtime/session/README.md" << 'EOF'
# Session Handoffs

This directory contains session handoff records for multi-agent coordination.

Format: session-{agent-name}-{timestamp}.md

Each handoff records:
- What was completed
- What remains
- Decisions made
- Exceptions registered
- Current Compliance Score

See AGENTS.md Coordination Rule C-04 for protocol.
EOF

echo "=== Bootstrap completed ==="
echo "Projeto criado em: $TARGET_DIR/$PROJECT_NAME"
echo "Próximos passos:"
echo "  1. cd $TARGET_DIR/$PROJECT_NAME"
echo "  2. Definir ontologia específica em knowledge/ontology/canonical.md"
echo "  3. Executar npm run registry:sync após adicionar capabilities"
echo "  4. Criar ADR-00001 para visão do projeto"