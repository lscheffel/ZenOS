---
description: Close execution wave and generate handoff
agent: reviewer
---

Close wave and prepare next cycle.

## Load Artifacts
- `${GOVERNANCE_STATE_FILE}`
- `${GOVERNANCE_CHANGELOG_FILE}`
- `governance/governance_manifest.md`
- `${GOVERNANCE_RULES_GOVERNANCE}`
- Active ADRs: `${GOVERNANCE_DECISIONS}/**/*.md`
- Active plans: `${GOVERNANCE_PLANS}/**/*.md`
- Pre-plan staging: `${GOVERNANCE_PRE_PLans}/**`

## Inspect Generated Diffs
- `${GOVERNANCE_STATE}/`
- `${GOVERNANCE_GRAPH}/`
- `${GOVERNANCE_TWIN}/`
- `${GOVERNANCE_GENERATED}/`
- `${GOVERNANCE_REPORTS}/`
- `${GOVERNANCE_LLM_EXPORTS}/`

## Create Handoff
Create under `${GOVERNANCE_PRE_PLANS}/wave-<wave-id>-handoff.md`.

## Next AED/Blueprint
If recommended, create under `${GOVERNANCE_PRE_PLANS}/` with `Status: Draft` only.
Move to `${GOVERNANCE_DECISIONS}/` or `${GOVERNANCE_PLANS}/` after review.
