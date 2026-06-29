---
description: Generate ADR from pipeline convergence
agent: reviewer
---

## Audit Inputs
- `${GOVERNANCE_ANALYSIS}/**/*.md`
- `${GOVERNANCE_REPORTS}/**/*.md`
- Excluding archived subpaths unless explicitly cited.

## Active Governance Memory
- `${GOVERNANCE_DECISIONS}/**/*.md`
- `${GOVERNANCE_PLANS}/**/*.md`
- Excluding `archive/**`.

## Governance Authority
- `AGENTS.md`
- `governance/governance_manifest.md`
- `${GOVERNANCE_MANIFESTS_PLATFORM}`
- `${GOVERNANCE_MANIFESTS_CAPABILITY_REGISTRY}`
- `${GOVERNANCE_MANIFESTS_AUTHORITY_MAP}`
- `${GOVERNANCE_RULES_GOVERNANCE}`

## Project State
- `STATE.md`
- `${GOVERNANCE_STATE}/**/*.json`
- `${GOVERNANCE_TWIN}/**/*.json`
- `${GOVERNANCE_GRAPH}/**/*.json`
- `${GOVERNANCE_GENERATED}/**/*.md`
- `${GOVERNANCE_LLM_EXPORTS}/bundle-manifest.json`

## Implementation Evidence
- `src/`
- `scripts/`
- `governance/`
- `package.json`

## Workflow
If `$ARGUMENTS` provides `--todo <path>`:
- Use custom TODO path.

Otherwise:
- Preferred path: `${GOVERNANCE_PLANS}/TODO-<next>-ERA-WAVE-CONVERGENCE.md`.

If `$ARGUMENTS` provides `--blueprint <path>`:
- Use custom blueprint path.

Otherwise:
- Preferred path: `${GOVERNANCE_PLANS}/BP-<next>-ERA-WAVE-CONVERGENCE.md`.

If `$ARGUMENTS` provides `--adr <path>`:
- Use custom ADR path.

Otherwise:
- Preferred path: `${GOVERNANCE_DECISIONS}/AED-<next>-ERA-WAVE-CONVERGENCE.md`.
- Use `${GOVERNANCE_TEMPLATES_ADR}`.

## Post-generation
- Run `npm run validate:generated` when `${GOVERNANCE_STATE}`, `${GOVERNANCE_GRAPH}`, `${GOVERNANCE_TWIN}`, `${GOVERNANCE_GENERATED}`, or `${GOVERNANCE_LLM_EXPORTS}` changed.
- Create handoff: `${GOVERNANCE_PRE_PLANS}/era-<era>-wave-<wave>-handoff.md`.
