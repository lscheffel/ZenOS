# Change Proposal — GH-PAGES-00001

# GitHub Pages Publication for ZenOS Repository

---

# Change Classification

CP Class: C (Operational)

# Impact Classification

Additive

---

# 1. Identifier

GH-PAGES-00001

# 2. Title

Habilitar GitHub Pages como canal de publicação do repositório ZenOS.

# 3. Affected Artifacts

- README.md (raiz do repositório)
- governance/templates/README-template.md (template de projeto derivado)
- .gitignore (possível ajuste para excluir artefatos de publicação)
- No futuro, workflows em `.github/workflows/` (a serem criados conforme necessidade)

# 4. Motivation

ZenOS é a Granted Sovereign Governance Platform. Atualmente o repositório existe apenas como árvore de arquivos navegável via GitHub.

Tornar documentação e governança acessíveis como site reduz:
- o custo cognitivo de onboarding de novos contribuidores;
- a dependência de download/clone para compreensão arquitetural;
- a fragmentação de conhecimento entre arquivos Markdown dispersos.

O GitHub Pages serve como canal de distribuição oficial da governança e arquitetura do ZenOS.

Decisão: adicionar GitHub Pages como canal de publicação oficial.

Autoridade: iniciativa operacional dentro do escopo do operador humano; não modifica artefatos de governança constitucional (AEDs, AGENTS.md, manifesto).

# 5. Proposed Changes

1. Adicionar `.nojekyll` na raiz do repositório para desabilitar processamento Jekyll e servir arquivos estáticos diretamente.
2. Revisar `.gitignore` para garantir que artefatos de publicação (quando aplicáveis) não sejam versionados desnecessariamente.
3. Habilitar GitHub Pages via `gh` CLI apontando para branch `main` na raiz.

Não há alteração estrutural em:
- governance/ diretivas (AEDs);
- AGENTS.md;
- knowledge/ontology/;
- capabilities/ contratos.

# 6. Compliance Impact

- Nenhum Hard violation introduzida.
- Nenhum AED SHALL é modificado.
- Não há alteração em invariantes de governança (INV-*, GOV-*, ENF-*, CHG-*).
- Compliance Score permanece inalterado.

# 7. Backward Compatibility

Modificação 100% aditiva.

Nenhuma funcionalidade existente é removida ou alterada.

Repositório permanece funcional como antes.

# 8. Proposed Effective Date

Imediato — Change Proposal aprovada pelo operador humano no momento da criação.

---

# 9. Approval Record

Status: APPROVED (human operator ratificação confirmada em 2026-06-29 03:54 -03:00)
Approved by: operador humano
