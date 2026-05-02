# Guia Passo a Passo - Aula de README com Pull Request

## Objetivo
Conduzir a aula prática de README inicial com foco em branch, Pull Request e rastreabilidade.

## Roteiro da aula

### Preparação
1. Pedir para a turma criar a pasta do projeto.
2. Inicializar o repositório local.
3. Confirmar branch principal como main.

```bash
mkdir readme-qualidade
cd readme-qualidade
git init
git branch -M main
```

### Etapa de documentação
1. Criar branch de documentação.
2. Preencher README com as seções obrigatórias.
3. Registrar commit docs.

```bash
git checkout -b feature/documentacao-inicial
git add README.md
git commit -m "docs: cria readme inicial com escopo e controle de qualidade"
```

### Etapa de funcionalidade
1. Criar branch de funcionalidade.
2. Ajustar o README com seção de fluxo de Pull Request.
3. Registrar commit feat.

```bash
git checkout -b feature/primeira-funcionalidade
git add README.md
git commit -m "feat: adiciona fluxo inicial de pull request"
```

### Primeiro Pull Request da turma
1. Subir a branch para o GitHub.
2. Abrir o Pull Request com base main.
3. Revisar e aprovar o PR.
4. Fazer o merge pela interface.

```bash
git push -u origin feature/primeira-funcionalidade
```

??? tip "Dica para condução"
    Oriente os alunos a escreverem no PR: o que mudou, por que mudou e como validar.

### Etapa de correção
1. Criar branch de correção.
2. Corrigir texto ou estrutura do README.
3. Registrar commit fix.
4. Fazer merge na main.

```bash
git checkout -b fix/ajuste-readme
git add README.md
git commit -m "fix: corrige padrao de descricao no readme"
git checkout main
git merge feature/documentacao-inicial
git merge fix/ajuste-readme
```

## Checklist para fechar a aula
- [ ] README final preenchido
- [ ] Branch de documentação criada
- [ ] Branch de funcionalidade criada
- [ ] Pull Request aberto e integrado
- [ ] Branch de correção aplicada
- [ ] Histórico de commits rastreável
