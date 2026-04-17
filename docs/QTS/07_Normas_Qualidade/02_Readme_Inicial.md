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

### Preparar o projeto com a turma

Escolham um tema simples para o projeto (exemplo: calculadora, lista de tarefas ou agenda).

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

Crie um arquivo simples do projeto, por exemplo `calculadora.py`, com uma função básica.

Commit sugerido:

```bash
git add .
git commit -m "feat: adiciona funcao inicial da calculadora"
```

Ligação com norma:

- Processo técnico de implementação com incremento controlado.
- Em maturidade, o trabalho deixa de ser improvisado e passa a ser gerenciado.

### Simular defeito e correção

Crie uma branch de correção:

```bash
git checkout -b fix/tratamento-divisao-zero
```

Simule um problema (divisão por zero sem tratamento), depois corrija.

Commit sugerido:

```bash
git add .
git commit -m "fix: trata divisao por zero na funcao dividir"
```

Ligação com norma:

- ISO 12207: atividade de manutenção e correção rastreável.
- ISO 25010: aumento da confiabilidade do software.

### Consolidar no branch principal

Retorne ao branch principal e faça merge das entregas:

```bash
git checkout main
git merge feature/documentacao-inicial
git merge feature/primeira-funcionalidade
git merge fix/tratamento-divisao-zero
```

No GitHub, o mesmo fluxo pode ser feito com Pull Requests para reforçar revisão e evidência de processo.

---

## Padrão de commits da aula

Use estes prefixos durante toda a atividade:

- `docs:` mudanças em documentação.
- `feat:` nova funcionalidade.
- `fix:` correção de defeito.

Exemplos:

- `docs: atualiza secao de controle de qualidade`
- `feat: adiciona operacao de soma`
- `fix: corrige validacao de entrada`

??? tip "Critério rápido para validar commit"
    Uma boa mensagem deve responder: o que mudou e por que mudou.

---

## Checklist de entrega

- [ ] O README possui as seções combinadas em aula.
- [ ] Existe branch separada para documentação.
- [ ] Existe branch separada para funcionalidade.
- [ ] Existe branch separada para correção.
- [ ] Os commits seguem o padrão `docs`, `feat` e `fix`.
- [ ] O histórico permite rastrear a evolução do projeto.

