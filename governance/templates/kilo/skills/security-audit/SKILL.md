---
name: security-audit
description: Run secret, environment, dependency, and artifact governance audits for ZenOS projects.
---

# Security Audit Skill

Use this skill before commits, releases, or exposing code to external agents.

## Workflow

1. Run `npm run security:scan`.
2. Run `npm run registry:audit`.
3. Inspect `.gitignore`, `.env*`, credentials, secrets, private keys, tokens, and forbidden artifacts.
4. Report severity, evidence, affected files, and remediation steps.

## Rules

- Never print secret values.
- Never rotate, delete, or expose secrets automatically.
- Treat leaked secrets as blockers.
- Prefer precise remediation over generic security advice.