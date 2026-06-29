---
name: release-manager
description: Prepare deterministic releases, changelogs, packages, and release validation for ZenOS projects.
---

# Release Manager Skill

Use this skill when preparing a release candidate or final release.

## Workflow

1. Run `npm run release:prepare`.
2. Review generated package artifact.
3. Generate or update release notes from commits when available.
4. Run `npm run security:scan`.
5. Run `npm run validate:generated`.
6. Report release readiness and blockers.

## Rules

- Never publish, tag, push, or create GitHub releases without explicit approval.
- Keep release notes factual and user-facing.
- List exact artifact paths.
- Treat failed preflight or security scan as a release blocker.