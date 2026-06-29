---
description: Run security and artifact governance scan
agent: security
---

Run the security and artifact governance scan.

1. Run `npm run security:scan`.
2. Run `npm run registry:audit`.
3. Inspect `.gitignore`, `.env*`, credentials, secrets, keys, tokens, and forbidden artifacts.
4. Report:
   - secret scan result
   - environment validation result
   - npm audit result
   - artifact governance result
   - blockers

Do not remove or rotate secrets automatically. Only report and block when a real risk is detected.