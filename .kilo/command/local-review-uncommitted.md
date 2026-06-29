---
description: Review uncommitted working-tree changes before commit
agent: reviewer
---

Review the current uncommitted working tree before committing.

1. Run `git status --short` and `git diff --name-status`.
2. Run `git diff --check`.
3. Review the change summary with `git diff --stat`.
4. Inspect focused diffs for code, config, and generated artifacts.
5. Run relevant validation commands when available:
   - `npm test`
   - `npm run validate:manifest`
   - `npm run validate:generated`
6. Report:
   - Changed files
   - Validation results
   - Risks or blockers
   - Whether the working tree is safe to commit

Do not commit, push, amend, or change files during this review.