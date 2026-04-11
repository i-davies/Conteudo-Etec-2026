# REVISÃO PARA PROVA PRÁTICA - BD2 (1º BIMESTRE)

> Esta revisão apresenta o formato da prova prática e os requisitos que serão avaliados. Use este material para treinar a criação completa do script SQL antes da avaliação.

---

## Objetivos desta Revisão

Ao treinar esta proposta, você deve:

1. Criar um banco de dados do zero usando `CREATE DATABASE` e `USE`.
2. Estruturar tabelas com tipos de dados coerentes.
3. Aplicar constraints obrigatórias (`NOT NULL`, `UNIQUE` e `DEFAULT`).
4. Organizar um script limpo, funcional e pronto para execução local.

---

## Proposta da Questão Prática

Desenvolva um projeto de banco de dados com o tema **Cadastro de Clubes de Estudo da ETEC**.

Você deverá criar:

- 1 banco de dados;
- 2 tabelas: `clubes` e `integrantes`.

---

## Requisitos Obrigatórios da Prova

- Criar um arquivo SQL com o nome no padrão:
  - `2DS_BD2_T1ouT2_Nome_Completo.sql`
- O script deve conter:
  - comando para criar o banco de dados;
  - comando para selecionar o banco criado;
  - criação da tabela `clubes`;
  - criação da tabela `integrantes`.
- Campos mínimos da tabela `clubes`:
  - `id_clube`
  - `nome_clube`
  - `sala`
  - `data_criacao`
- Campos mínimos da tabela `integrantes`:
  - `id_integrante`
  - `nome_integrante`
  - `turma`
  - `email`
- Definir os tipos de dados adequados em todos os campos.
- Aplicar, no mínimo, as seguintes constraints no total do script:
  - 2 campos com `NOT NULL`;
  - 1 campo com `UNIQUE`;
  - 1 campo com `DEFAULT`.

---

## Checklist de Treino Antes da Prova

- O banco foi criado com `CREATE DATABASE`.
- O banco foi selecionado com `USE`.
- As tabelas `clubes` e `integrantes` foram criadas corretamente.
- Cada tabela possui chave primária com `AUTO_INCREMENT`.
- As constraints mínimas foram aplicadas.
- O script executa sem erros no ambiente local.

---

## Entrega na Avaliação

- A entrega será presencial, em arquivo local.
- O nome do arquivo deve seguir exatamente o padrão solicitado.
- O script deve estar funcional e organizado para correção.
