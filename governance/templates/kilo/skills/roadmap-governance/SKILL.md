---
name: roadmap-governance
description: Reconcile roadmap objectives against implementation reality for governed projects.
---

# Roadmap Governance Skill

Use this skill when reviewing roadmap accuracy, implementation progress, roadmap drift, delivery status, or roadmap maintenance.

## Configuration
Reads from: `governance/config/orchestrator-paths.json`

## Workflow

1. Run `git status --short`.
2. Run `/manifest-validate`.
3. Run `/sync-state`.
4. Run `/implementation-reconcile`.
5. Review roadmap against reconciliation findings.
6. Classify each roadmap item.
7. Update roadmap status markers.
8. Append implementation evidence where available.
9. Generate or refresh roadmap summary metrics.
10. Report divergences, risks, blockers, and undocumented implementation.

## Status Taxonomy

```text
[x] Implemented
[~] Partially Implemented
[ ] Planned
[!] Divergent
[?] Unknown
[-] Obsolete
```

## Rules

* Treat reconciliation findings as the primary source of truth.
* Never mark an item as implemented without evidence.
* Preserve roadmap intent, wording, priorities, and sequencing.
* Never create, remove, or reorder roadmap objectives.
* Only update governance metadata, evidence sections, notes, and summary metrics.
* Report implementation that exists but is not represented in the roadmap.
* Report roadmap items that diverge from implementation reality.
* Prefer [?] Unknown over speculative classification when evidence is insufficient.
* Treat the requested roadmap as the single authoritative review target.

## Scope Discipline

This skill supports single-target roadmap governance.

The roadmap selected by the invoking agent is the only authorized write target.

Other project artifacts may be reviewed as evidence sources, including:

* source code
* tests
* manifests
* AEDs
* blueprints
* documentation
* generated state

However, those artifacts must remain read-only.

* Never write to any roadmap other than the roadmap selected by the invoking agent.
* Never expand scope from a single roadmap review into repository-wide roadmap maintenance.

If additional roadmap drift is discovered elsewhere in the repository:

* report findings
* recommend follow-up review
* do not perform modifications

### Hard Stop

If the skill determines that additional roadmap files require updates:

* report the findings
* recommend follow-up review
* do not modify those files

Under no circumstances may this skill authorize write operations outside the roadmap selected by the invoking agent.

## Quality Gates

* Governance manifests are valid.
* Generated state is synchronized.
* Reconciliation completes successfully.
* Every status change is supported by evidence.
* Roadmap summary metrics are refreshed.
* Divergences and undocumented implementation are reported.
