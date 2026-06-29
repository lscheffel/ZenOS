---
layout: default
title: ZenOS Wiki
description: Sovereign Governance Platform documentation
---

# ZenOS Wiki

Sovereign Governance Platform — Documentação canônica do repositório.

## Visão Geral

ZenOS é uma plataforma de governança para ecossistemas de software, organizada em domínios arquiteturais:

- **governance/** — diretivos (AEDs), constraints, policies, standards, decisões (ADRs), templates, state
- **knowledge/** — ontologia, especificações, glossários
- **capabilities/** — agents, skills, workflows executáveis
- **runtime/** — estado transitório

## Boot Order

1. `AGENTS.md` — identidade e protocolo de execução
2. `governance/governance_manifest.md` — manifesto da plataforma
3. `governance/directives/AED-*.md` — diretivas arquiteturais
4. `governance/document-authority.json` — autoridade por artefato
5. `REGISTRY.md` — inventário canônico

## Diretivas Arquiteturais (AEDs)

14 diretivas fundamentais:

| AED | Título |
|-----|--------|
| [00001](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00001.md) | Visão arquitetural e princípios fundacionais |
| [00002](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00002.md) | Operating Model |
| [00003](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00003.md) | Ontologia canônica |
| [00004](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00004.md) | Knowledge Architecture |
| [00005](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00005.md) | Governance Architecture |
| [00006](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00006.md) | Capability Model |
| [00007](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00007.md) | Contract Specification |
| [00008](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00008.md) | Boot & Discovery |
| [00009](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00009.md) | Context Loading |
| [00010](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00010.md) | Repository Layout |
| [00011](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00011.md) | Compliance & Enforcement |
| [00012](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00012.md) | Change Management |
| [00013](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00013.md) | Exception Registry |
| [00014](https://github.com/lscheffel/ZenOS/blob/main/governance/directives/AED-00014.md) | Health Metrics |

[Ver todos](https://github.com/lscheffel/ZenOS/tree/main/governance/directives)

## Decisões Arquiteturais (ADRs)

Decisões de projeto:

| ADR | Título |
|-----|--------|
| [00001](https://github.com/lscheffel/ZenOS/blob/main/governance/decisions/ADR-00001-domain-separation.md) | Domain Separation |
| [00002](https://github.com/lscheffel/ZenOS/blob/main/governance/decisions/ADR-00002-orchestrator-refactoring.md) | Orchestrator Refactoring |
| [00003](https://github.com/lscheffel/ZenOS/blob/main/governance/decisions/ADR-00003-registry-sync.md) | Registry Sync Capability |
| [00004](https://github.com/lscheffel/ZenOS/blob/main/governance/decisions/ADR-00004-ontology-sync.md) | Ontology Sync Capability |
| [00005](https://github.com/lscheffel/ZenOS/blob/main/governance/decisions/ADR-00005-template-reconciliation.md) | Template Reconciliation |

[Ver todas](https://github.com/lscheffel/ZenOS/tree/main/governance/decisions)

## Artefatos Centrais

- [REGISTRY.md](https://github.com/lscheffel/ZenOS/blob/main/REGISTRY.md) — inventário canônico
- [governance_manifest.md](https://github.com/lscheffel/ZenOS/blob/main/governance/governance_manifest.md) — manifesto constitucional
- [document-authority.json](https://github.com/lscheffel/ZenOS/blob/main/governance/document-authority.json) — autoridade por artefato
- [canonical.md](https://github.com/lscheffel/ZenOS/blob/main/knowledge/ontology/canonical.md) — ontologia canônica
- [bootstrap.sh](https://github.com/lscheffel/ZenOS/blob/main/scripts/bootstrap.sh) — script de bootstrap