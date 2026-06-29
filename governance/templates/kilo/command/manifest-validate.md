---
description: Validate platform manifest and capability registry consistency
agent: reviewer
---

Validate manifest-driven platform constitution.

1. Load configuration from `governance/config/orchestrator-paths.json`.
2. Run `npm run validate:manifest`.
3. Inspect failures in:
   - `${GOVERNANCE_PLATFORM_MANIFEST}`
   - `${GOVERNANCE_CAPABILITY_REGISTRY}`
   - `${GOVERNANCE_RULES_GOVERNANCE}`
   - `${GOVERNANCE_AUTHORITY_MAP}`
4. Fix only deterministic consistency issues when safe.
5. Rerun `npm run validate:manifest`.
6. Report remaining blockers and affected capabilities/assets.

Do not change governance intent without explicit user approval.
