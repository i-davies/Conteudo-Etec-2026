# README Inicial com Qualidade de Processo

Nesta atividade, vamos construir o projeto do zero e usar Git para registrar evidências de qualidade.

A proposta conecta prática de desenvolvimento com normas e modelos estudados em QTS.

---

## Objetivos da atividade

- Criar um README inicial com padrão mínimo de documentação.
- Organizar o trabalho com branches de feature e correção.
- Aplicar mensagens de commit padronizadas.
- Relacionar cada etapa com ISO 12207, ISO 25010 e maturidade de processo.

---

## Conexão com as normas

| Prática em aula | Relação com qualidade |
| --- | --- |
| README com seções obrigatórias | Gerenciamento de informação e implementação (ISO 12207) |
| Commits claros e padronizados | Gerenciamento de configuração e rastreabilidade (ISO 12207) |
| Uso de branches para separar mudanças | Processo gerenciado (CMMI/MPS.BR - nível 2) |
| Correção de defeito com histórico | Melhoria contínua e foco em confiabilidade (ISO 25010) |

??? tip "Leitura rápida"
    Quando o desenvolvedor documenta, versiona e corrige com padrão, ele não está apenas "usando Git": ele está aplicando qualidade de processo.

---

## Passo a passo da prática em sala

### Preparar o projeto

Escolham um tema simples para o projeto (exemplo: recomendador de filmes da turma, lista de tarefas ou agenda).

No terminal:

```bash
mkdir readme-qualidade
cd readme-qualidade
git init
```

Crie um arquivo `README.md` com as seções:

- Nome do projeto
- Objetivo
- Funcionalidades planejadas
- Como executar
- Controle de Qualidade (testes planejados)

```markdown
# Nome do Projeto

## Objetivo
Descreva em uma frase qual problema este projeto resolve.

## Funcionalidades planejadas
- [ ] Funcionalidade 1
- [ ] Funcionalidade 2
- [ ] Funcionalidade 3

## Como executar
### Pré-requisitos
- Python 3.12+
- UV instalado

### Passos
1. Clonar o repositório.
2. Entrar na pasta do projeto.
3. Executar:
    ```bash
    uv run main.py
    ```

## Controle de Qualidade
### Testes planejados
- [ ] Cenário válido principal
- [ ] Cenário inválido principal
- [ ] Cenário de borda

### Padrões adotados
- Commits semânticos (`docs`, `feat`, `fix`)
- Branch por tipo de mudança
- Histórico rastreável
```

Ligação com norma:

- ISO 12207: organização da informação e implementação.
- ISO 25010: clareza dos requisitos melhora manutenibilidade e confiabilidade.

### Criar branch de documentação inicial

```bash
git checkout -b feature/documentacao-inicial
```

Preencha o `README.md` com conteúdo inicial do projeto.

Commit sugerido:

```bash
git add README.md
git commit -m "docs: cria readme inicial com escopo e controle de qualidade"
```

Ligação com norma:

- Gerenciamento de configuração: fica registrado quem alterou, o que alterou e por qual motivo.

### Criar branch de funcionalidade

```bash
git checkout -b feature/primeira-funcionalidade
```

Crie um arquivo simples do projeto, por exemplo `catalogo_filmes.py`, com uma função básica de recomendação.

Commit sugerido:

```bash
git add .
git commit -m "feat: adiciona recomendacao inicial por genero"
```

### Primeiro Pull Request da turma

Envie a branch de funcionalidade para o GitHub:

```bash
git push -u origin feature/primeira-funcionalidade
```

No GitHub:

1. Clicar em **Compare & pull request**.
2. Revisar `base: main` e `compare: feature/primeira-funcionalidade`.
3. Criar o PR com título e descrição objetiva.
4. Se disponível, ativar **Enable auto-merge** para merge automático.
5. Se auto-merge não estiver habilitado, usar **Merge pull request**.

Esse será o primeiro PR da turma, com evidência prática de revisão e rastreabilidade.

Ligação com norma:

- Processo técnico de implementação com incremento controlado.
- Em maturidade, o trabalho deixa de ser improvisado e passa a ser gerenciado.

### Simular defeito e correção

Crie uma branch de correção:

```bash
git checkout -b fix/validacao-genero
```

Simule um problema (gênero inválido sem tratamento), depois corrija.

Commit sugerido:

```bash
git add .
git commit -m "fix: trata genero inexistente sem falha"
```

Ligação com norma:

- ISO 12207: atividade de manutenção e correção rastreável.
- ISO 25010: aumento da confiabilidade do software.

### Consolidar no branch principal

Retorne ao branch principal e faça merge das entregas:

```bash
git checkout main
git merge feature/documentacao-inicial
git merge fix/validacao-genero
```

Observação: a branch `feature/primeira-funcionalidade` já terá sido integrada por PR na interface do GitHub.

No GitHub, o mesmo fluxo pode ser feito com Pull Requests para reforçar revisão e evidência de processo.

---

## Padrão de commits da aula

Use estes prefixos durante toda a atividade:

- `docs:` mudanças em documentação.
- `feat:` nova funcionalidade.
- `fix:` correção de defeito.

Exemplos:

- `docs: atualiza secao de controle de qualidade`
- `feat: adiciona recomendacao por genero`
- `fix: corrige validacao de genero`

??? tip "Critério rápido para validar commit"
    Uma boa mensagem deve responder: o que mudou e por que mudou.

---

## Padrão de Markdown da aula

Use este padrão em todos os READMEs da atividade:

- Títulos em hierarquia com `#`, `##` e `###`.
- Listas objetivas com `-`.
- Checklist com `- [ ]` para planejamento.
- Blocos de código com linguagem declarada (`bash`, `python`, `markdown`).
- Texto direto, com frases curtas e termos técnicos claros.

---