# {{PROJECT_NAME}} - Agent Executive Order

> **Classification:** PROJECT_AGENT_INSTRUCTIONS | **System:** ZenOS Sovereign Governance Platform | **Version:** {{PLATFORM_VERSION}}

---

# 1. SYSTEM IDENTIFICATION

## 1.1 Platform Identity
- **System Name:** ZenOS Sovereign Governance Platform
- **System Type:** Sovereign Governance Platform
- **Architecture:** Constitutional Bootstrap Architecture
- **Platform Version:** {{PLATFORM_VERSION}}

## 1.2 Constitutional Framework
- **Constitution:** `AGENTS.md` (inherited - canonical)
- **Manifest:** `governance/governance_manifest.md` (inherited)
- **Directives:** `governance/directives/AED-*.md` (inherited)
- **Authority Registry:** `governance/document-authority.json` (inherited)

---

# 2. PROJECT IDENTIFICATION

## 2.1 Project Classification
- **Project Name:** {{PROJECT_NAME}}
- **Project Type:** Governed Instance
- **Domain:** Domain E - Project Implementation
- **Parent System:** ZenOS Template

## 2.2 Ontology Domains

| Domain | Description | Ownership |
|--------|-------------|-----------|
| A - PLATFORM | Runtime, bootstrap engine, orchestrator | Inherited |
| B - GOVERNANCE KERNEL | Manifest, AEDs, rules | Inherited |
| C - PROJECT COGNITION | ADRs, telemetry, reports | Project-Owned |
| D - CAPABILITIES | Skills, agents, workflows | Project-Owned |
| E - PROJECT | Source code, features | Project-Owned |
| F - RUNTIME | Session handoffs, temp state | Ephemeral |

---

# 3. GOVERNANCE FRAMEWORK

## 3.1 Authority Chain
1. **AGENTS.md** - Constitutional instructions
2. **governance_manifest.md** - Platform purpose and axioms
3. **AED-00001 through AED-00014** - Operational directives

## 3.2 Forbidden Actions (HALT Conditions)
- Modifying Domain B (Governance) artifacts
- Implementing before loading governance
- Breaking published contracts
- Unscoped operation expansion
- Hardcoded assumptions without verification

---

# 4. COMMAND REGISTRY

## 4.1 Governance Commands
| Command | Purpose |
|---------|---------|
| `/local-review-uncommitted` | Review changes before commit |
| `/manifest-validate` | Validate governance consistency |
| `/security-scan` | Audit security vulnerabilities |
| `/implementation-reconcile` | Reconcile implementation vs governance |
| `/sync-state` | Sync generated state artifacts |

---

**Effective Date:** {{BOOTSTRAP_DATE}}

**Authority:** ZenOS Constitution

**Classification:** PROJECT_OWNED | **Inheritance:** Template-derived
