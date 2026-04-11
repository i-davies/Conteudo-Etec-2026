# Gabarito - Prova Prática BD2

> Este gabarito apresenta uma solução possível para a prova prática do 1º bimestre. Outras estruturas também podem estar corretas, desde que todos os requisitos obrigatórios sejam atendidos.

---

## Objetivos desta Revisão

Ao revisar este gabarito, você deve:

1. Entender a estrutura das tabelas `clubes` e `integrantes`.
2. Identificar corretamente os tipos de dados escolhidos para cada campo.
3. Reconhecer onde e por que as constraints foram aplicadas.
4. Ser capaz de recriar o script completo sem consulta.

---

## Script SQL Completo

```sql
CREATE DATABASE etec_clubes;
USE etec_clubes;

CREATE TABLE clubes (
    id_clube INT AUTO_INCREMENT PRIMARY KEY,
    nome_clube VARCHAR(100) NOT NULL,
    sala VARCHAR(20) NOT NULL,
    data_criacao DATE DEFAULT CURRENT_DATE
);

CREATE TABLE integrantes (
    id_integrante INT AUTO_INCREMENT PRIMARY KEY,
    nome_integrante VARCHAR(100) NOT NULL,
    turma VARCHAR(20) NOT NULL,
    email VARCHAR(150) UNIQUE
);
```

---

## Requisitos Obrigatórios Atendidos

- Banco criado com `CREATE DATABASE` e selecionado com `USE`.
- Duas tabelas criadas: `clubes` e `integrantes`.
- Cada tabela com `PRIMARY KEY` e `AUTO_INCREMENT`.
- Constraints aplicadas:
  - `NOT NULL` em `clubes.nome_clube`, `clubes.sala`, `integrantes.nome_integrante` e `integrantes.turma`.
  - `UNIQUE` em `integrantes.email`.
  - `DEFAULT` em `clubes.data_criacao`.

---

## Explicação de Cada Constraint Utilizada

### Tabela `clubes`

```sql
CREATE TABLE clubes (
    id_clube INT AUTO_INCREMENT PRIMARY KEY,
    nome_clube VARCHAR(100) NOT NULL,
    sala VARCHAR(20) NOT NULL,
    data_criacao DATE DEFAULT CURRENT_DATE
);
```

- `id_clube INT PRIMARY KEY AUTO_INCREMENT`: Identificador único gerado automaticamente.
- `nome_clube VARCHAR(100) NOT NULL`: Campo obrigatório para registrar o nome do clube.
- `sala VARCHAR(20) NOT NULL`: Campo obrigatório para indicar a sala do clube.
- `data_criacao DATE DEFAULT CURRENT_DATE`: Usa a data atual quando o valor não é informado.

### Tabela `integrantes`

```sql
CREATE TABLE integrantes (
    id_integrante INT AUTO_INCREMENT PRIMARY KEY,
    nome_integrante VARCHAR(100) NOT NULL,
    turma VARCHAR(20) NOT NULL,
    email VARCHAR(150) UNIQUE
);
```

- `id_integrante INT PRIMARY KEY AUTO_INCREMENT`: Identificador único para cada integrante.
- `nome_integrante VARCHAR(100) NOT NULL`: Campo obrigatório para nome do estudante.
- `turma VARCHAR(20) NOT NULL`: Campo obrigatório para a turma.
- `email VARCHAR(150) UNIQUE`: Evita cadastro de e-mails repetidos.

---

## Pontos Importantes para a Prova

1. `CREATE DATABASE` cria o banco que será usado no exercício.
2. `USE` define o banco ativo para os comandos seguintes.
3. `CREATE TABLE` cria as estruturas com campos e tipos de dados.
4. `PRIMARY KEY` identifica cada registro de forma única.
5. `AUTO_INCREMENT` gera IDs automáticos.
6. `NOT NULL` garante preenchimento obrigatório.
7. `UNIQUE` evita valores duplicados.
8. `DEFAULT` define valor padrão quando não há entrada explícita.
