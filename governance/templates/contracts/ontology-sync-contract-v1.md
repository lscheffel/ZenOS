# Contract: Ontology Sync Capability

## Identity
- ID: ontology-sync-contract-v1
- Owner: platform
- Version: 1.0.0

## Purpose
Extract domain terms from ADRs and update knowledge/ontology/canonical.md automatically.

## Inputs
- repository_root: string (default: current directory)

## Outputs
- knowledge/ontology/canonical.md: merged with Domain Terms from ADRs

## Dependencies
- bash, sed

## Consumers
- Agents: reviewer
- Humans: architects (via npm run ontology:sync)

## Lifecycle
replaceable
