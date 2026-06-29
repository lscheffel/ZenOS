# ADR-00002: Refactoring Orchestrator for Governance Alignment

## Status
IMPLEMENTED

## Context
The `.kilo` directory contains KiloCode agents, skills, and commands that were hard-coded for ZenOS-specific paths and workflows. This coupling prevents orchestrator reuse across derived projects.

## Decision
Refactor orchestrator components to be governance-agnostic while maintaining ZenOS compatibility.

## Authority
- AED-00009 (Context Loading) — Path configuration
- AED-00010 (Repository Layout) — Template structure

## Rationale
Orchestrator must work across derived projects without path coupling. Governance paths must be parameterized, not hardcoded.

## Consequences
**Positivas:**
- Orchestrator reusable across any ZenOS-derived project
- Path configuration centralized in orchestrator-paths.json
- Templates enable consistent deployment

**Negativas:**
- Adds indirection layer for path resolution
- Requires resolve-paths.sh processing step

## Implementation
Completed 2026-06-28T01:35:00-03:00:
- Phase 1: Analyzed coupling (35 hard-coded paths)
- Phase 2: Parameterized paths (`governance/config/orchestrator-paths.json`)
- Phase 3: Generalized workflows (`governance/templates/kilo/`, `.kilo/`)
- Phase 4: Documentation (`.kilo/README.md`, resolve-paths.sh)

## Tags
#governance #orchestrator #refactoring