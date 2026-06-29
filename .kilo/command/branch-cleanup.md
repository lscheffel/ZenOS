---
description: Review branch hygiene before merge
agent: reviewer
---

Review branch hygiene before merge.

1. Run `git status --short`, `git branch --show-current`, and `git log --oneline -10`.
2. Run `npm run preflight`.
3. Check for generated artifacts, temporary files, debug logs, and unintended lockfile changes.
4. Report:
   - merge readiness
   - risky files
   - stale generated artifacts
   - cleanup recommendations

Do not delete branches, amend commits, or force-push.