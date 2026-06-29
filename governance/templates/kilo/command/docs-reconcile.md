---
description: Reconcile canonical documentation with source state
agent: docs
---

Reconcile canonical documentation with the current source and governance state.

1. Run `npm run validate:manifest`.
2. Use the `documentation-reconciliation` skill if available.
3. Review and update:
   - `README.md`
   - `STATE.md`
   - `CHANGELOG.md`
   - `USAGE.md`
   - `docs/usage.md` when present
4. Keep documentation factual and anchored to current code, waves, engines, plugins, and governance state.
5. Run `npm run preflight`.
6. Summarize documentation drift fixed and any remaining documentation risks.