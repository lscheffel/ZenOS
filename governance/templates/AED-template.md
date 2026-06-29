# AED-XXX: [Artifact Governance Directive]

## Purpose
[Define o objetivo da diretiva de governança para este tipo de artefato]

## Classification
Artefatos ZenOS pertencem a exatamente um domínio (A-F). Multiple-domain ownership é proibido.

## Governance Scope
[Definir áreas de governança cobertas]

## Security Rules
1. **Secrets Protection:** Nenhum segredo em código/arquivos versionados
2. **Artifact Integrity:** Todos os artefatos versionados devem ter autor registrada
3. **Path Validation:** Caminhos devem estar em `governance/document-authority.json`

## Validation Rules
- Manifesto deve existir e ser válido
- Registry deve conter entrada para o artefato
- Autor deve ter permissão para o domínio

## Enforcement
Violations bloqueiam execução via HALT conditions (AED-00011).

## Audit Trail
Todos os artefatos devem ter:
- Autor registrada
- Data de criação
- Status de revisão
- Referência a AED/Contract autoritativo
