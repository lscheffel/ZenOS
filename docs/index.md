---
layout: default
---
<div class="homepage">
  <header class="hero" role="banner">
    <div class="hero-content">
      <h1 class="hero-title">ZenOS</h1>
      <p class="hero-subtitle">Sovereign Governance Platform</p>
      <p class="hero-description">Canonical documentation for governing software evolution, provisioning governed project ecosystems, and enforcing constitutional architecture.</p>
      <div class="hero-actions">
        <a href="{{ '/getting-started/' | relative_url }}" class="btn btn-primary">Quick Start</a>
        <a href="{{ '/architecture/' | relative_url }}" class="btn btn-secondary">Architecture</a>
        <a href="{{ site.zenos.repository }}" class="btn btn-outline" target="_blank" rel="noopener">Repository</a>
      </div>
    </div>
  </header>

  <section class="platform-overview" aria-labelledby="platform-overview-heading">
    <div class="wrapper">
      <h2 id="platform-overview-heading">Platform Overview</h2>
      <div class="overview-grid">
        <article class="overview-card">
          <h3>Governance First</h3>
          <p>Governance authorizes execution. Execution never creates governance. Every change must satisfy constitutional integrity before implementation.</p>
        </article>
        <article class="overview-card">
          <h3>Documentation First</h3>
          <p>The published documentation is the canonical interface for readers. The repository remains the interface for contributors.</p>
        </article>
        <article class="overview-card">
          <h3>Platform Sovereignty</h3>
          <p>ZenOS is a Sovereign Governance Platform — it provisions capabilities, not identity. Projects begin cognitively blank.</p>
        </article>
        <article class="overview-card">
          <h3>Stable Information Architecture</h3>
          <p>Navigation designed independently from repository implementation. Repository evolution minimally impacts user navigation.</p>
        </article>
      </div>
    </div>
  </section>

  <section class="quick-start" aria-labelledby="quick-start-heading">
    <div class="wrapper">
      <h2 id="quick-start-heading">Quick Start</h2>
      <div class="quick-start-steps">
        <div class="step">
          <span class="step-number">1</span>
          <div class="step-content">
            <h3>Boot Sequence</h3>
            <p>Load <code>AGENTS.md</code> → <code>governance/governance_manifest.md</code> → <code>AEDs</code> → <code>ADRs</code> → <code>REGISTRY.md</code> → <code>Knowledge</code></p>
          </div>
        </div>
        <div class="step">
          <span class="step-number">2</span>
          <div class="step-content">
            <h3>Classify Task</h3>
            <p>Identify domain (A–F), capability type, and scope. Verify authorization through AED + Contract.</p>
          </div>
        </div>
        <div class="step">
          <span class="step-number">3</span>
          <div class="step-content">
            <h3>Execute</h3>
            <p>Implement within governance boundaries. Validate at every gate. Produce required artifacts.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="repository-architecture" aria-labelledby="repo-arch-heading">
    <div class="wrapper">
      <h2 id="repo-arch-heading">Repository Architecture</h2>
      <div class="architecture-domains">
        <article class="domain-card governance">
          <header>
            <span class="domain-badge">A</span>
            <h3>Platform</h3>
          </header>
          <p>Reusable platform capabilities: CLI, GUI, MCP, RAG, Bootstrap Engine, Classification Engine, State Engine.</p>
          <a href="{{ '/capabilities/' | relative_url }}" class="domain-link">Explore Capabilities →</a>
        </article>
        <article class="domain-card governance">
          <header>
            <span class="domain-badge">B</span>
            <h3>Governance Kernel</h3>
          </header>
          <p>Constitutional governance: AEDs, STXs, Rules, Profiles, Templates, Authority Models, Manifest, Policies.</p>
          <a href="{{ '/governance/' | relative_url }}" class="domain-link">Browse Governance →</a>
        </article>
        <article class="domain-card governance">
          <header>
            <span class="domain-badge">C</span>
            <h3>Project Cognition</h3>
          </header>
          <p>Institutional memory: ADRs, Telemetry, Reports, Analysis, Twins, Graphs, Roadmaps, Blueprints.</p>
          <a href="{{ '/knowledge/' | relative_url }}" class="domain-link">View Knowledge →</a>
        </article>
        <article class="domain-card governance">
          <header>
            <span class="domain-badge">D</span>
            <h3>Capabilities</h3>
          </header>
          <p>Executable behavior: Agents, Skills, Workflows, Validators, Generators, Templates.</p>
          <a href="{{ '/capabilities/' | relative_url }}" class="domain-link">View Capabilities →</a>
        </article>
        <article class="domain-card governance">
          <header>
            <span class="domain-badge">E</span>
            <h3>Project Implementation</h3>
          </header>
          <p>Business implementation: Source code, tests, documentation, releases, assets.</p>
          <a href="{{ '/repository/' | relative_url }}" class="domain-link">Repository Guide →</a>
        </article>
        <article class="domain-card governance">
          <header>
            <span class="domain-badge">F</span>
            <h3>Runtime</h3>
          </header>
          <p>Transient operational state: Sessions, active tasks, working memory, temporary decisions.</p>
          <a href="{{ '/runtime/' | relative_url }}" class="domain-link">Runtime State →</a>
        </article>
      </div>
    </div>
  </section>

  <section class="core-domains" aria-labelledby="core-domains-heading">
    <div class="wrapper">
      <h2 id="core-domains-heading">Core Documentation Domains</h2>
      <nav class="domain-grid" aria-label="Documentation domains">
        <a href="{{ '/governance/' | relative_url }}" class="domain-tile governance">
          <span class="domain-icon">⚖️</span>
          <h3>Governance</h3>
          <p>Directives, decisions, templates, enforcement</p>
        </a>
        <a href="{{ '/knowledge/' | relative_url }}" class="domain-tile knowledge">
          <span class="domain-icon">📚</span>
          <h3>Knowledge</h3>
          <p>Ontology, specifications, glossary, patterns</p>
        </a>
        <a href="{{ '/capabilities/' | relative_url }}" class="domain-tile capabilities">
          <span class="domain-icon">⚙️</span>
          <h3>Capabilities</h3>
          <p>Agents, skills, workflows, validators</p>
        </a>
        <a href="{{ '/runtime/' | relative_url }}" class="domain-tile runtime">
          <span class="domain-icon">🔄</span>
          <h3>Runtime</h3>
          <p>Sessions, analysis, working state</p>
        </a>
      </nav>
    </div>
  </section>

  <section class="boot-sequence" aria-labelledby="boot-sequence-heading">
    <div class="wrapper">
      <h2 id="boot-sequence-heading">Constitutional Boot Sequence</h2>
      <ol class="boot-steps">
        <li><code>AGENTS.md</code> — Execution identity, authority chain, priorities</li>
        <li><code>governance/governance_manifest.md</code> — Platform constitution</li>
        <li><code>governance/directives/AED-*.md</code> — 14 Architectural Enforcement Directives</li>
        <li><code>governance/document-authority.json</code> — Document authority registry</li>
        <li><code>REGISTRY.md</code> — Capability & generator inventory</li>
        <li><code>knowledge/ontology/canonical.md</code> — Canonical vocabulary</li>
        <li><code>governance/decisions/ADR-*.md</code> — Architectural decisions</li>
        <li><code>governance/execution/TODO-*.md</code> — Execution roadmaps</li>
      </ol>
    </div>
  </section>

  <section class="core-documents" aria-labelledby="core-docs-heading">
    <div class="wrapper">
      <h2 id="core-docs-heading">Core Documents</h2>
      <div class="doc-grid">
        <article class="doc-card">
          <h3><a href="{{ '/governance/governance_manifest/' | relative_url }}">Governance Manifest</a></h3>
          <p>Platform constitution, axioms, ontology, capability model, sovereignty principles.</p>
        </article>
        <article class="doc-card">
          <h3><a href="{{ '/governance/directives/' | relative_url }}">Architectural Directives (AEDs)</a></h3>
          <p>14 directives governing vision, operating model, ontology, knowledge, governance, capabilities, contracts, boot, context, layout, compliance, change, exceptions, health.</p>
        </article>
        <article class="doc-card">
          <h3><a href="{{ '/governance/decisions/' | relative_url }}">Architectural Decisions (ADRs)</a></h3>
          <p>Domain separation, orchestrator refactoring, registry sync, ontology sync, template reconciliation, documentation platform migration.</p>
        </article>
        <article class="doc-card">
          <h3><a href="{{ '/governance/execution/TODO-ADR-00006/' | relative_url }}">Documentation Migration Roadmap</a></h3>
          <p>Wave-based execution plan for ADR-00006: assessment → infrastructure → IA → navigation → refinement → QA → finalization.</p>
        </article>
        <article class="doc-card">
          <h3><a href="{{ '/knowledge/ontology/canonical/' | relative_url }}">Canonical Ontology</a></h3>
          <p>Canonical vocabulary. No implementation may introduce undefined concepts.</p>
        </article>
        <article class="doc-card">
          <h3><a href="{{ site.zenos.repository }}/blob/main/scripts/bootstrap.sh" target="_blank" rel="noopener">Bootstrap Script</a></h3>
          <p>Provisions capabilities via manifest → capabilities → dependencies → generators → provisioning.</p>
        </article>
      </div>
    </div>
  </section>

  <section class="repository-links" aria-labelledby="repo-links-heading">
    <div class="wrapper">
      <h2 id="repo-links-heading">Repository Links</h2>
      <nav class="repo-links-grid" aria-label="Repository navigation">
        <a href="{{ site.zenos.repository }}" target="_blank" rel="noopener" class="repo-link">
          <span class="repo-icon">📁</span>
          <span>Source Repository</span>
        </a>
        <a href="{{ site.zenos.governance_repo }}" target="_blank" rel="noopener" class="repo-link">
          <span class="repo-icon">⚖️</span>
          <span>Governance Artifacts</span>
        </a>
        <a href="{{ site.zenos.repository }}/issues" target="_blank" rel="noopener" class="repo-link">
          <span class="repo-icon">🐛</span>
          <span>Issues</span>
        </a>
        <a href="{{ site.zenos.repository }}/discussions" target="_blank" rel="noopener" class="repo-link">
          <span class="repo-icon">💬</span>
          <span>Discussions</span>
        </a>
      </nav>
    </div>
  </section>
</div>