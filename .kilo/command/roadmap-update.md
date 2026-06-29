---
description: Reconcile roadmap objectives against implementation reality
agent: code
---

Update the roadmap specified through `$ARGUMENTS` using the project's existing governance and reconciliation workflows.

This command supports single-target roadmap governance.

IMPORTANT:

This is a single-target governance command.

The roadmap explicitly provided through `$ARGUMENTS` is the only file authorized for modification.

## Preconditions

* A roadmap file must be provided through `$ARGUMENTS`
* The roadmap file must exist
* The roadmap must be valid markdown
* The working tree may contain uncommitted changes

Abort if:

* no roadmap file is provided
* the roadmap cannot be located
* the roadmap cannot be parsed

---

## Scope Enforcement

The roadmap path provided through `$ARGUMENTS` is the sole write target for this command.

Authorized write scope:

```text
roadmaps/roadmap-rag.md
```

Unauthorized write scope:

```text
roadmaps/*
docs/*
adr/*
blueprints/*
meta/*
manifests/*
README.md
CHANGELOG.md
```

The command may read any repository file necessary for:

* evidence gathering
* implementation reconciliation
* architectural validation
* governance validation

However, it must never modify any file other than the roadmap explicitly referenced in `$ARGUMENTS`.

---

## Execution Flow

### 1. Validate governance state

Execute: `/manifest-validate`

Review platform manifests, governance manifests, capability registries, and generated state consistency.

If critical governance inconsistencies are detected:

* stop execution
* report findings
* do not modify the roadmap

### 2. Refresh derived state

Execute: `/sync-state`

Ensure all generated governance artifacts reflect the current repository state before reconciliation begins.

### 3. Gather implementation evidence

Execute: `/implementation-reconcile`

Treat reconciliation findings as the primary source of truth.

Evidence may include:

* implementation files
* tests
* generated artifacts
* manifests
* AED references
* blueprint references
* documentation references
* repository history

Never speculate about implementation status.

### 4. Analyze roadmap items

Inspect only the roadmap supplied through `$ARGUMENTS`.

For each roadmap item:

* identify the intended outcome
* identify implementation evidence
* identify supporting documentation
* identify architectural alignment
* determine implementation status
* determine confidence level
* identify divergence when applicable

---

### 5. Map implementation status

Use the following governance taxonomy:

```text
[x] Implemented
[~] Partially Implemented
[ ] Planned
[!] Divergent
[?] Unknown
[-] Obsolete
```

---

### 6. Update roadmap metadata

Update roadmap status markers in place.

Preserve:

* roadmap intent
* roadmap wording
* roadmap priorities
* roadmap sequencing
* roadmap ownership
* roadmap rationale

Where appropriate, append structured evidence sections:

```md
Evidence:
- src/example/file.js
- tests/example/file.test.js

Notes:
Implementation exists but additional integration work remains.
```

---

### 7. Detect undocumented implementation

Identify implementation evidence that does not appear in the roadmap.

Report:

* undocumented capabilities
* undocumented features
* undocumented architectural decisions
* undocumented governance artifacts

Do not automatically create roadmap items.

Instead, provide recommendations.

---

### 8. Generate roadmap summary

Append or refresh a roadmap summary section.

Example:

```md
## Roadmap Status Summary

Implemented: 12
Partial: 4
Planned: 7
Divergent: 1
Unknown: 0
Obsolete: 0

Completion: 71%
```

Completion percentage formula:

```text
(Implemented + (Partial × 0.5))
/
Total Active Items
```

---

### 9. Produce governance report

Report:

* roadmap analyzed
* roadmap path
* items updated
* implementation coverage
* status distribution
* divergences detected
* undocumented implementations discovered
* confidence assessment

Highlight:

* blocked items
* stale roadmap sections
* architectural inconsistencies
* governance concerns

If drift is detected outside the target roadmap:

* report only
* do not modify them

---

## Safety Rules

Never modify source code.

Never modify manifests.

Never modify ADRs.

Never modify blueprints.

Never modify architecture documents.

Never modify documentation.

Never modify changelogs.

Never modify generated state.

Never create roadmap objectives.

Never remove roadmap objectives.

Never mark an item as implemented without evidence.

Never write to any file other than the roadmap explicitly referenced in `$ARGUMENTS`.

Evidence must always take precedence over assumptions.

When evidence is conflicting:

```text
[?] Unknown
```

over speculative classification.

---

## Success Criteria

A successful execution results in:

* governance state validated
* derived state refreshed
* implementation reconciliation completed
* exactly one roadmap file updated
* no files outside the requested roadmap modified
* roadmap status markers updated
* roadmap evidence sections refreshed
* roadmap summary updated