---
name: architecture-audit
description: Run state-of-the-art architectural validation and drift review for ZenOS projects.
---

# Architecture Audit Skill

Use this skill when reviewing architecture, generated state, manifest consistency, or branch readiness.

## Configuration
Reads paths from: `governance/config/orchestrator-paths.json`

## Workflow

1. Run `git status --short` and `git diff --name-status`.
2. Run `npm run validate:manifest`.
3. Run `npm run validate:generated`.
4. Run `npm test`.
5. Run `npm run registry:validate`.
6. Review generated diffs under:
   - `${GOVERNANCE_STATE}/`
   - `${GOVERNANCE_GRAPH}/`
   - `${GOVERNANCE_TWIN}/`
   - `${GOVERNANCE_GENERATED}/`
   - `${GOVERNANCE_REPORTS}/`
   - `${GOVERNANCE_LLM_EXPORTS}/`
7. Report blockers, risks, and commit readiness.

## Quality gates

- `npm test`: all tests pass.
- `validate:manifest`: no manifest violations.
- `validate:generated`: generated artifacts are synchronized.
- `registry:validate`: capability registry is consistent.
