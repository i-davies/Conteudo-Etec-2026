# Criando e Modificando Estruturas no MySQL

> Nesta aula vamos aprender os principais comandos de **DDL (Data Definition Language / Linguagem de Definição de Dados)** para criar e alterar a estrutura de bancos e tabelas.

---

## Objetivos da Aula

Ao final desta sequência, você será capaz de:

1. Criar um banco de dados com `CREATE DATABASE`.
2. Criar tabelas com `CREATE TABLE` usando tipos de dados básicos.
3. Alterar estruturas existentes com `ALTER TABLE` sem perder registros.
4. Remover tabelas com segurança usando `DROP TABLE`.

---

## Criação de Banco e Tabelas: `CREATE DATABASE` e `CREATE TABLE`

### Criando um banco de dados

O comando abaixo cria um novo banco chamado `loja`:

```sql
CREATE DATABASE loja;
```

Para evitar erro caso o banco já exista, usamos:

```sql
CREATE DATABASE IF NOT EXISTS loja;
```

Após criar, selecionamos o banco com:

```sql
USE loja;
```

??? tip "Boas práticas"
    Use nomes curtos, em minúsculo e sem acento para bancos, tabelas e colunas. Isso evita problemas de compatibilidade e facilita manutenção.

---

### Criando tabelas com tipos de dados básicos

Exemplo de tabela `clientes`:

```sql
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    data_cadastro DATE,
    ativo BOOLEAN DEFAULT TRUE
);
```

#### Tipos de dados mais comuns no início

- `INT`: números inteiros.
- `VARCHAR(n)`: textos de tamanho variável.
- `DATE`: datas no formato `AAAA-MM-DD`.
- `BOOLEAN`: verdadeiro/falso (`TRUE` ou `FALSE`).
- `DECIMAL(p, s)`: números com casas decimais (ex.: preços).

Exemplo de tabela `produtos` com preço:

```sql
CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(80) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0
);
```

---

## Alteração e Remoção de Estruturas: `ALTER TABLE` e `DROP TABLE`

Depois que a tabela já existe, é comum precisar ajustar sua estrutura.

### Alterando a tabela com `ALTER TABLE`

#### 1) Adicionar coluna

```sql
ALTER TABLE clientes
ADD telefone VARCHAR(20);
```

#### 2) Renomear coluna

MariaDB:

```sql
ALTER TABLE clientes
CHANGE telefone celular VARCHAR(20);
```

MySQL:

```sql
ALTER TABLE clientes
RENAME COLUMN telefone TO celular;
```

#### 3) Alterar tipo de dado

```sql
ALTER TABLE produtos
MODIFY preco DECIMAL(12,2);
```

#### 4) Remover coluna

```sql
ALTER TABLE clientes
DROP COLUMN celular;
```

??? info "Importante"
    `ALTER TABLE` muda apenas a estrutura. Em geral, os dados já cadastrados permanecem, desde que a alteração seja compatível com os valores existentes.

---

### Removendo tabelas com `DROP TABLE`

Para excluir uma tabela inteira:

```sql
DROP TABLE clientes;
```

Com verificação de existência:

```sql
DROP TABLE IF EXISTS clientes;
```

⚠️ Atenção: `DROP TABLE` apaga **estrutura e dados** da tabela.

---

## Exemplo completo

```sql
CREATE DATABASE IF NOT EXISTS escola_ddl;
USE escola_ddl;

CREATE TABLE turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(30) NOT NULL,
    ano INT NOT NULL
);

ALTER TABLE turmas
ADD turno VARCHAR(15) DEFAULT 'manhã';

ALTER TABLE turmas
MODIFY nome_turma VARCHAR(50);

-- use com cuidado:
-- DROP TABLE turmas;
```

---

## Fechamento

Nesta unidade você aprendeu comandos fundamentais de **DDL (Linguagem de Definição de Dados)** para iniciar qualquer projeto relacional. Dominar `CREATE` e `ALTER` é essencial para evoluir bancos de dados de forma organizada e segura.
