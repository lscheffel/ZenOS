# Orquestração de Agentes ZenOS (.kilo)

Configuração KiloCode/VSCodium para desenvolvimento governado com orquestração agentes.

## Origem
Referência imutável mantida na raiz do repositório. Versão template em `governance/templates/kilo/`.

## Configuração
Caminhos parametrizados via `governance/config/orchestrator-paths.json`.

Resolver variáveis:
```bash
./.kilo/scripts/resolve-paths.sh .kilo/skills/architecture-audit/SKILL.md
```

---

## Agents (4)

### reviewer.md — Revisor de Código e Governança

**Descrição Detalhada:**
O agente reviewer é especializado em auditoria de código e verificação de conformidade governamental. Ele executa revisões sistemáticas de mudanças não commitadas, identificando violações arquiteturais, anti-padrões e inconsistências com a governança ZenOS. O agente é treinado para reconhecer padrões proibidos (AP-AGENTS-01 a AP-AG010), verificar gates de compliance e garantir que toda implementação siga o Constitutional Execution Model.

**Situações de Uso:**
- Após modificações em código fonte antes do commit
- Durante revisões de pull requests para detecção de ruínas
- Antes de merges para branch principal para prevenir regressões
- Quando há alterações em arquivos de governança (.md, json)
- Após execução de generators ou builds automatizados

**Por que usar:**
Protege a integridade da governança, previne violações arquiteturais, garante que todo código seja revisado independentemente do autor, fornece consistência em revisões e reduz débito técnico.

**Como usar:**
Invocar via command `/local-review-uncommitted` para mudanças atuais ou `/local-review <branch>` para comparação com branch base. Agente automaticamente executa git status, diff, validações npm e verifica gates específicos.

**Casos práticos:**
1. Desenvolvedor modifica `src/services/user.ts` - executar `/local-review-uncommitted` para verificar padrões
2. Feature branch pronta para merge - executar `/local-review main` para comparação completa
3. Após execução de generator - executar `/local-review-uncommitted` para validar artifacts gerados

---

### docs.md — Especialista em Reconciliação de Documentação

**Descrição Detalhada:**
Especializado em reconciliar a documentação com a realidade da implementação. Percorre artefatos de documentação (README, CHANGELOG, STATE, ADRs) e verifica se estão sincronizados com código fonte, commits git e estado de implementação. O agente detecta divergências, lacunas documentais e sugere atualizações necesárias para manter a verdade canônica.

**Situações de Uso:**
- Após implementação significativa para atualizar documentação
- Durante milestone releases para reconciliar roadmap
- Quando há mudanças em contratos ou APIs públicas
- Após refatorações para atualizar arquitetura documental
- Na preparação de releases para garantir changelog correto

**Por que usar:**
Mantém documentação viva e precisa, previne "documentation debt", garante que decisões arquiteturais estejam registradas, alinha expectativas com realidade.

**Como usar:**
Executar `/docs-reconcile` após implementação. Agente analisa diffs, compara com ADRs existentes, verifica README/STATE/CHANGELOG e gera recomendações de atualização.

**Casos práticos:**
1. Feature completa - `/docs-reconcile` reconcilia STATE.md, CHANGELOG.md e roadmap
2. Bug fix complexo - agente sugere ADR para registro da decisão de correção
3. Após múltiplos commits - gera changelog atualizado com base nas mensagens

---

### security.md — Auditor de Segurança e Governança de Artefatos

**Descrição Detalhada:**
Especializado em detecção de vulnerabilidades, vazamentos de segredos e violações de governança de artefatos. Executa auditoria npm, escaneamento de credenciais, verificação de .env e inspeção de artefatos sensíveis. O agente classifica severidade, fornece evidências e recomenda remediação específica.

**Situações de Uso:**
- Antes de commits para prevenir vazamento de segredos
- Durante CI/CD para auditoria automática
- Após adição de dependências para verificar vulnerabilidades
- Antes de releases públicas para validação de artefatos
- Quando há mudanças em arquivos de configuração (.env, secrets)

**Por que usar:**
Previne vazamento de credenciais, protege infraestrutura, garante compliance de segurança, fornece verificação automática contínua, identifica dependências vulneráveis.

**Como usar:**
Executar `/security-scan` após mudanças ou antes de pushes. Agente roda npm audit, escaneia arquivos .env, verifica padrões de segredo e reporta blockers/arquivo-afetado/remediação.

**Casos práticos:**
1. `/security-scan` detecta API key hardcoded em `src/config/database.ts`
2. Após `npm install` - agente identifica vulnerabilidade em dependência
3. `.env.example` modificado - verifica se .gitignore protege .env

---

### release.md — Gerenciador de Releases

**Descrição Detalhada:**
Especializado em preparação de releases determinísticos, geração de changelogs e validação de pacotes. Executa workflow completo de release: validação de manifestos, sync de estado, auditoria de segurança, preparação de artefatos e geração de release notes. O agente garante que releases sejam reproduzíveis e bem documentados.

**Situações de Uso:**
- Após milestone alcançado para preparar release candidate
- Antes de tag para validar release readiness
- Durante release automation para geração de changelog
- Após correções críticas para patch release
- Na preparação de releases públicas

**Por que usar:**
Garante releases consistentes, evita releases quebrados, automatiza changelog, valida pré-condições, documenta mudanças de forma precisa.

**Como usar:**
Executar `/release-prepare` após validação. Agente verifica gates, prepara package.json atualizado, gera release notes e reporta blockers.

**Casos práticos:**
1. Milestone completado - `/release-prepare` gera v1.2.0 com changelog
2. Hotfix aplicado - agente recomenda v1.2.1 patch
3. Após 50 commits - gera release notes consolidados automaticamente

---

## Skills (4)

### architecture-audit — Auditoria Arquitetural

**Descrição Detalhada:**
Realiza validação de arquitetura de ponta-a-ponta, detectando drift entre implementação e governança. Verifica consistência de manifestos, integridade de registry de capabilities, validade de contratos publicados e conformidade de estrutura. A skill é o "gatekeeper" principal da qualidade arquitetural.

**Situações de Uso:**
- Após mudanças em arquitetura ou estrutura de pastas
- Antes de merges para branch principal para prevenir drift
- Durante code reviews para validação arquitetural
- Após adição/remoção de capabilities
- Na preparação de releases maiores

**Por que usar:**
Garante integridade arquitetural, previne drift sistemático, valida contratos, audita capabilities, mantém manifestos consistentes.

**Como usar:**
Invocar via workflow: executar npm scripts de validação, inspecionar diffs, verificar registry e reportar blockers.

**Casos práticos:**
1. Nova capability adicionada sem registro - skill reporta violação
2. Arquivo removido mas manifesto não atualizado - detecta inconsistência
3. Estrutura de pasta modificada - verifica AED-00010 compliance

---

### roadmap-governance — Governança de Roadmap

**Descrição Detalhada:**
Reconcilia objetivos de roadmap contra realidade de implementação usando evidências verificáveis. Classifica items como [x] Implemented, [~] Parcial, [ ] Planned, [!] Divergent, [?] Unknown, [-] Obsolete. A skill preserva intenção do roadmap enquanto reporta divergências reais.

**Situações de Uso:**
- No final de sprints para atualizar status
- Antes de planning para validar progresso real
- Durante retrospectives para identificar divergências
- Após implementações para atualizar roadmap
- Quando há mudanças em prioridades/arquitetura

**Por que usar:**
Mantém roadmap preciso, previne promessas não cumpridas, alinha expectativas, fornece visibilidade real de progresso, documenta decoys.

**Como usar:**
Executar `/roadmap-update` com roadmap alvo. Skill analisa implementação, classifica items, atualiza evidências e reporta divergências.

**Casos práticos:**
1. Item marcado [x] mas sem testes - skill reclassifica para [~]
2. Implementação existente não documentada no roadmap - reporta
3. Feature abortada mas roadmap não atualizado - marca [-]

---

### release-manager — Gerenciamento de Releases

**Descrição Detalhada:**
Orquestra workflow completo de preparação de releases, garantindo determinismo e rastreabilidade. Executa validações, preparação de artefatos, geração de changelogs, auditoria de segurança e validação final. O skill nunca publica releases sem aprovação explícita.

**Situações de Uso:**
- Preparando release candidate para validação
- Na pipeline de CI/CD para geração automática
- Após milestone para consolidar mudanças
- Antes de releases públicas para validação final
- Durante automação de versionamento

**Por que usar:**
Padroniza releases, garante qualidade, previne releases quebrados, automatiza changelog, fornece checklist de release.

**Como usar:**
Execute `/release-prepare` na branch de release. Skill valida, prepara package.json, gera notes, audita segurança e reporta readiness.

**Casos práticos:**
1. `npm run validate:generated` falha - skill reporta blocker
2. Security scan detecta vulnerabilidade - impede release
3. Changelog não atualizado - gera automaticamente

---

### security-audit — Auditoria de Segurança

**Descrição Detalhada:**
Executa auditoria completa de segurança e integridade de artefatos, verificando vazamentos de segredos, credenciais expostas, vulnerabilidades em dependências e conformidade de artefatos. O skill classifica severidade e fornece remediação específica.

**Situações de Uso:**
- Após instalação de novas dependências
- Antes de commits para prevenir vazamento
- Durante CI/CD para auditoria contínua
- Após mudanças em arquivos sensíveis
- Na preparação de releases públicas

**Por que usar:**
Protege credenciais, previne vulnerabilidades, garante compliance, audita artefatos, fornece remediação guiada.

**Como usar:**
Execute `/security-scan` após mudanças. Skill audita npm, escaneia segredos, verifica artefatos e reporta severidade.

**Casos práticos:**
1. `.env` commitado acidentalmente - skill detecta e recomenda remoção
2. Token em `src/config/api.ts` - reporta localização exata
3. npm audit mostra CVE - classifica e sugere atualização

---

## Comandos (11)

### local-review-uncommitted — Revisão de Mudanças não Commitadas

**Descrição Detalhada:**
Revisa o working tree atual antes de commit, executando git status, diffs, verificações de lint e validações npm. Identifica arquivos alterados, inconsistências, risks e blockers. O command verifica se o working tree é seguro para commit.

**Situações de Uso:**
- Antes de cada commit significativo
- Após edições em múltiplos arquivos
- Antes de staged para verificar mudanças
- Durante desenvolvimento ativo
- Após execução de generators automatizados

**Por que usar:**
Previne commits problemáticos, identifica issues prematuras, garante qualidade do código, reduz CI failures, fornece feedback imediato.

**Como usar:**
```bash
/local-review-uncommitted
```

**Casos práticos:**
1. 3 arquivos modificados - command mostra diffs focados e alerts
2. after generator run - verifica artifacts gerados automaticamente

---

### docs-reconcile — Reconciliação de Documentação

**Descrição Detalhada:**
Reconcilia todos os artefatos de documentação com a implementação real, verificando consistência entre README, STATE.md, CHANGELOG, ADRs, blueprints e docs. Atualiza documentação com base em evidências verificáveis.

**Situações de Uso:**
- Após implementações significativas
- Antes de releases para atualizar docs
- Durante milestones para reconciliar estado
- Após refatorações para atualizar arquitetura
- Quando docs parecem desatualizadas

**Por que usar:**
Mantém docs precisas, previne drift documental, alinha expectativas, documenta decisions automaticamente, reduz dívida documental.

**Como usar:**
```bash
/docs-reconcile
```

**Casos práticos:**
1. Feature implementada mas não documentada - command sugere ADR
2. STATE.md desatualizado - sincroniza com implementação

---

### implementation-reconcile — Reconciliação de Implementação

**Descrição Detalhada:**
Audita divergência entre código implementado e governança esperada. Verifica ADRs, blueprints, manifestos, generated state e relatórios. Gera ADR automática para gaps arquiteturais e reporta undescumented implementation.

**Situações de Uso:**
- Após implementação sem ADR prévia
- Durante auditoria arquitetural
- Após mudanças significativas
- Quando há código sem documentação
- Na revisão de compliance

**Por que usar:**
Detecta gaps arquiteturais, documenta implementation automática, previne technical debt, audita conformidade, gera ADRs necessárias.

**Como usar:**
```bash
/implementation-reconcile
```

**Casos práticos:**
1. Código novo sem ADR - gera ADR automaticamente
2. Blueprint não seguido - reporta divergência

---

### manifest-validate — Validação de Manifesto

**Descrição Detalhada:**
Valida consistência de manifestos de plataforma, registry de capabilities, mapas de autoridade e regras de governança. Detecta inconsistências e fornece correções determinísticas quando seguras.

**Situações de Uso:**
- Após mudanças em capabilities
- Durante bootstrap de novos projetos
- Após adição/remoção de capabilities
- Antes de merges críticos
- Na validação de integridade

**Por que usar:**
Garante integridade do manifesto, previne config drift, valida capabilities, detecta inconsistências, força compliance.

**Como usar:**
```bash
/manifest-validate
```

**Casos práticos:**
1. Capability sem manifest - validação falha
2. Registry inconsistente - suggere correção

---

### sync-state — Sincronização de Estado

**Descrição Detalhada:**
Sincroniza todos os artefatos de estado gerado com a implementação real. Atualiza governance/state, governance/graph, governance/twin, governance/generated, governance/reports e governance/llm-exports.

**Situações de Uso:**
- Após mudanças significativas
- Antes de releases para estado atualizado
- Durante reconciliação de estado
- Após refatorações
- Quando estado parece inconsistente

**Por que usar:**
Mantém estado atualizado, previne divergência, sincroniza generated artifacts, garante consistência, fornece verdade canônica.

**Como usar:**
```bash
/sync-state
```

**Casos práticos:**
1. STATE.md desatualizado - sincroniza com código
2. Graph de dependências - atualiza automaticamente

---

### security-scan — Auditoria de Segurança

**Descrição Detalhada:**
Executa auditoria completa de segurança: npm audit, verificação de segredos, escaneamento de .env, auditoria de artefatos. Reporta severidade, evidências, arquivos afetados e passos de remediação.

**Situações de Uso:**
- Antes de commits para prevenir vazamento
- Após mudanças em dependências
- Durante CI/CD pipeline
- Antes de releases públicas
- Após atualizações de segurança

**Por que usar:**
Protege credenciais, previne vulnerabilidades, audita artefatos, fornece remediação, garante segurança contínua.

**Como usar:**
```bash
/security-scan
```

**Casos práticos:**
1. Credential em logs - detecta e recomenda remoção
2. CVE em dependência - classifica e sugere patch

---

### release-prepare — Preparação de Release

**Descrição Detalhada:**
Prepara release completo: validação de preflight, sync de estado, auditoria de segurança, preparação de artefatos, geração de release notes. Nunca publica sem aprovação.

**Situações de Uso:**
- Preparando release candidate
- Após milestone completado
- Antes de tag de release
- Durante pipeline de release
- Para releases patch críticos

**Por que usar:**
Padroniza releases, garante qualidade, automatiza changelog, audita segurança, previne releases quebrados.

**Como usar:**
```bash
/release-prepare
```

**Casos práticos:**
1. Milestone v1.0 - prepara release com changelog
2. Bug crítico - prepara patch de segurança

---

### roadmap-update — Atualização de Roadmap

**Descrição Detalhada:**
Atualiza status de items de roadmap com base em evidências verificáveis. Classifica como [x] Implemented, [~] Parcial, [!] Divergent, [?] Unknown. Preserva intenção e prioridades.

**Situações de Uso:**
- Fim de sprint para atualizar status
- Após implementações para marcar concluídos
- Durante retrospectives
- Antes de planning para alinhar expectativas
- Quando roadmap parece desatualizado

**Por que usar:**
Mantém roadmap preciso, previne promessas vazias, alinha expectativas, documenta progresso real, identifica divergências.

**Como usar:**
```bash
/roadmap-update
```

**Casos práticos:**
1. Item parcialmente implementado - marca [~]
2. Feature abortada - marca [-]

---

### wave-close — Encerramento de Wave

**Descrição Detalhada:**
Encerra ciclo de execução (wave), gera handoff para próximo agente e atualiza state. Cria handoff em `governance/pre-plans/` com decisões, blockers e próximos passos.

**Situações de Uso:**
- Fim de iterção de desenvolvimento
- Após milestone atingido
- Quando há handoff entre agentes
- Para documentar estado intermediário
- Na transição de fase

**Por que usar:**
Documenta handoffs, preserva contexto, facilita coordenação, registra decisões, prepara próximo agente.

**Como usar:**
```bash
/wave-close wave-001
```

**Casos práticos:**
1. Feature completa - handoff para security-audit
2. Bug fix - handoff para docs-reconcile

---

## Customização

1. **Caminhos:** Editar `governance/config/orchestrator-paths.json`
2. **Agents:** Criar em `.kilo/agent/`
3. **Skills:** Criar em `.kilo/skills/`
4. **Commands:** Criar em `.kilo/command/`

Mudanças afetando governança requerem processo AED-00012.
