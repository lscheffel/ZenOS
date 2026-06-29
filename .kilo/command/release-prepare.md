---
description: Prepare a release package and validation report
agent: release
---

Prepare the repository for release without publishing.

1. Run `npm run release:prepare`.
2. Run `npm run release:infer` and review the inferred SemVer bump, target tag, and semantic reasons.
3. If changelog generation is available, generate release notes from recent commits.
4. Verify the generated package exists and is not committed unless explicitly requested.
5. Run `git status --short` and summarize generated artifacts.
6. Report:
   - validation results
   - security scan results
   - inferred target tag
   - semantic bump reason
   - package artifact path
   - release blockers
   - next recommended release actions

Do not create tags, push, publish, or create GitHub releases unless explicitly requested.