# Exercícios de Fixação: DDL

> Pratique os comandos de **DDL (Data Definition Language / Linguagem de Definição de Dados)**, como `CREATE DATABASE`, `CREATE TABLE`, `ALTER TABLE` e `DROP TABLE`, para consolidar o conteúdo da unidade.

---

## Contexto

Você foi contratado para estruturar o banco de dados de uma pequena biblioteca escolar.

Crie o banco e as tabelas usando **SQL (Structured Query Language / Linguagem de Consulta Estruturada)** no HeidiSQL (aba de consulta) ou outro cliente MySQL.

---

## Parte 1 — Criação inicial

### 1) Criar o banco de dados

Crie um banco chamado `biblioteca_escolar`.

### 2) Selecionar o banco

Ative esse banco para executar os próximos comandos.

### 3) Criar a tabela `livros`

Campos mínimos:

- `id_livro` (inteiro, auto incremento, chave primária)
- `titulo` (texto até 120 caracteres, obrigatório)
- `autor` (texto até 80 caracteres, obrigatório)
- `ano_publicacao` (inteiro)
- `disponivel` (boolean, padrão verdadeiro)

### 4) Criar a tabela `alunos`

Campos mínimos:

- `id_aluno` (inteiro, auto incremento, chave primária)
- `nome_aluno` (texto até 100 caracteres, obrigatório)
- `turma` (texto até 20 caracteres)
- `email` (texto até 120 caracteres, único)

---

## Parte 2 — Alterações de estrutura

Agora que as tabelas já existem, faça as mudanças abaixo sem recriar o banco:

### 5) Alterar tabela `livros`

- Adicione a coluna `isbn` com até 20 caracteres.
- Altere o tipo da coluna `autor` para até 120 caracteres.

### 6) Alterar tabela `alunos`

- Adicione a coluna `telefone` com até 20 caracteres.
- Renomeie `telefone` para `celular`.

Comandos sugeridos:

MariaDB:

```sql
ALTER TABLE alunos
CHANGE telefone celular VARCHAR(20);
```

MySQL:

```sql
ALTER TABLE alunos
RENAME COLUMN telefone TO celular;
```

---

## Checklist de Entrega

- [ ] Script SQL com todos os comandos usados.
- [ ] Evidência de que o banco `biblioteca_escolar` foi criado.
- [ ] Evidência das tabelas após os comandos `ALTER TABLE`.
- [ ] Uso correto de `DROP TABLE IF EXISTS`.

??? tip "Dica para conferência"
    Use `DESCRIBE nome_tabela;` após cada alteração para confirmar se a estrutura ficou exatamente como solicitado.
