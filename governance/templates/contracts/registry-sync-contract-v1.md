# Contract: Registry Sync Capability

## Identity
- ID: registry-sync-contract-v1
- Owner: platform
- Version: 1.0.0

## Purpose
Automatically synchronize REGISTRY.md with actual repository state by scanning capabilities/, knowledge/, and runtime/ artifacts.

## Inputs
- repository_root: string (default: current directory)

## Outputs
- REGISTRY.md: updated with detected capabilities, AEDs, and sessions

## Dependencies
- bash, find, grep

## Consumers
- Agents: reviewer
- Humans: developers (via npm run registry:sync)

## Lifecycle
replaceable
