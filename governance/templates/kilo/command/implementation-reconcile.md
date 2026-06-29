---
description: Reconcile implementation against governance artifacts
agent: reviewer
---

Audit implementation drift against governance baseline.

1. Load configuration from `governance/config/orchestrator-paths.json`.
2. Run `git status --short` and `git diff --name-status`.
3. Load artifacts:
   - AEDs: `${GOVERNANCE_DECISIONS}/**/*.md`
   - Plans/blueprints: `${GOVERNANCE_PLANS}/**/*.md`
   - Source: `src/`, `scripts/`, `governance/`
   - Platform authority: `governance/platform/`, `governance/rules/`
   - Generated state: `${GOVERNANCE_STATE}/`, `${GOVERNANCE_GRAPH}/`, `${GOVERNANCE_TWIN}/`, `${GOVERNANCE_GENERATED}/`, `${GOVERNANCE_LLM_EXPORTS}/`
   - Existing audit/reports: `${GOVERNANCE_AUDITS}/`, `${GOVERNANCE_REPORTS}/`

## Phase 2: Inspect Implementation
- `${GOVERNANCE_DIRECTIVES}/**/*.md`

## Phase 3: Generate Report
Preferred path: `${GOVERNANCE_REPORTS}/implementation-reconciliation-report.md`.
If generated after failed governance audit: `${GOVERNANCE_AUDITS}/implementation-reconciliation-audit.md`.

## Phase 4: Recommendations
Preferred path: `${GOVERNANCE_DECISIONS}/AED-<next>-IMPLEMENTATION-RECONCILIATION.md`.
Use template: `${GOVERNANCE_TEMPLATES_ADR}`.
Preferred blueprint path: `${GOVERNANCE_PLANS}/BP-<next>-IMPLEMENTATION-RECONCILIATION.md`.
