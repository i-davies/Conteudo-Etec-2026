# Constraints I no MySQL

> Nesta unidade vamos aplicar as primeiras constraints de integridade: `NOT NULL`, `UNIQUE` e `DEFAULT`.

---

## Objetivos da Aula

Ao final desta sequência, você será capaz de:

1. Definir campos obrigatórios com `NOT NULL`.
2. Evitar duplicidade de dados com `UNIQUE`.
3. Configurar valores padrão com `DEFAULT`.
4. Validar se a estrutura ficou correta com `DESCRIBE`.

---

## Conceito de Constraint

Em SQL (Structured Query Language / Linguagem de Consulta Estruturada), **constraint** é uma regra aplicada na tabela para evitar dados inválidos.

Sem constraints, a tabela aceita quase tudo. Com constraints, o banco protege a qualidade dos dados.

---

## Constraint `NOT NULL`

Impede que uma coluna obrigatória seja salva vazia.

```sql
CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    turma VARCHAR(20)
);
```

No exemplo acima:

- `nome_aluno` é obrigatório.
- `turma` pode ficar sem valor.

---

## Constraint `UNIQUE`

Impede valores repetidos em uma coluna.

```sql
CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE
);
```

Uso comum:

- e-mail,
- matrícula,
- código de usuário.

---

## Constraint `DEFAULT`

Define valor automático quando o usuário não informa o campo.

```sql
CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    status_aluno VARCHAR(20) DEFAULT 'ativo'
);
```

Se o campo `status_aluno` não for enviado no `INSERT`, o valor salvo será `ativo`.

---

## Exemplo Completo

```sql
CREATE DATABASE IF NOT EXISTS escola_constraints;
USE escola_constraints;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    perfil VARCHAR(20) DEFAULT 'aluno'
);
```

??? tip "Dica"
    Sempre teste inserções válidas e inválidas para confirmar se as regras foram aplicadas corretamente.

---

## Fechamento

Com `NOT NULL`, `UNIQUE` e `DEFAULT`, você já consegue evitar boa parte dos erros mais comuns de cadastro em bancos relacionais.
