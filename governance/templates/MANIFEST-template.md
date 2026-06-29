# PROJECT_MANIFEST.md

# {{PROJECT_NAME}} PROJECT CONSTITUTION

Version: {{PROJECT_VERSION}}

Status: {{STATUS}}

Classification: PROJECT_CONSTITUTION

Authority Level: PROJECT_GOVERNED

Platform Status: GOVERNED INSTANCE

---

# 1. PURPOSE

{{PROJECT_NAME}} is a governed project instance provisioned by ZenOS template.

Its purpose is to:

* Execute project-specific business logic
* Operate under inherited platform governance
* Maintain project sovereignty within platform boundaries
* Enable independent project evolution

---

# 2. CONSTITUTIONAL AUTHORITY CHAIN

Authority order is absolute:

```
AGENTS.md
  ↓
governance/governance_manifest.md
  ↓
governance/directives/AED-*.md
  ↓
governance/decisions/ADR-*.md
  ↓
project/
```

Lower layers conform to higher layers.

Implementation never overrides governance.

---

# 3. PROJECT COGNITION

Project cognition begins at project genesis.

Examples: ADRs, Telemetry, Reports, Twins, Graphs, State, Analysis, Roadmaps, Blueprints

Project cognition is GENERATED.

Project cognition is NEVER inherited.

---

# 4. STATE MODEL

Canonical machine-readable truth resides in:

``governance/state/``

State precedes documentation.

Documentation may be regenerated from state.

---

# 5. GOVERNANCE BOUNDARIES

Platform Side (Inherited):
* Capabilities
* Governance kernel

Project Side (Generated):
* Project cognition
* Implementation

Nothing may straddle both sides.
