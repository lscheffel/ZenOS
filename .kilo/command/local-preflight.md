---
description: Run local preflight before committing
agent: reviewer
---

Run the local preflight for the current uncommitted working tree.

1. Run `git status --short`, `git diff --name-status`, and `git diff --check`.
2. Run `npm run preflight`.
3. If `validate:generated` fails, instruct the user to run `npm run sync:state`, review the generated diff, and rerun preflight.
4. Summarize:
   - changed files
   - validation results
   - blockers
   - whether the working tree is safe to commit

Do not commit, push, amend, or edit files during this review.