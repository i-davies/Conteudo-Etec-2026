# DML no MySQL: `INSERT INTO` e Carga Inicial de Dados

> Nesta aula, vamos iniciar a manipulação de dados usando `DML`, com foco em `INSERT INTO` para montar massa de teste.

---

## Objetivos da Aula

Ao final desta sequência, você será capaz de:

1. Entender o que é `DML` no contexto de banco de dados.
2. Inserir dados em tabelas com `INSERT INTO`.
3. Fazer carga inicial de registros para testes.
4. Validar se os dados foram inseridos corretamente.

---

## O que é DML

`DML` significa **Data Manipulation Language** (Linguagem de Manipulação de Dados).

Esses comandos atuam sobre os registros das tabelas já criadas.

Principais comandos de `DML`:

- `INSERT INTO`: inserir dados.
- `UPDATE`: atualizar dados existentes.
- `DELETE`: remover dados.

Nesta aula, o foco será em `INSERT INTO`.

---

## Sintaxe Básica do `INSERT INTO`

Inserindo uma linha com colunas definidas:

```sql
INSERT INTO nome_tabela (coluna1, coluna2)
VALUES (valor1, valor2);
```

Inserindo várias linhas de uma vez:

```sql
INSERT INTO nome_tabela (coluna1, coluna2)
VALUES
    (valor1, valor2),
    (valor3, valor4),
    (valor5, valor6);
```

??? tip "Boas práticas"
    Sempre informe explicitamente as colunas no `INSERT INTO`. Isso evita erro quando a ordem das colunas muda na tabela.

---

## Exemplo com o Banco `biblioteca_relacional`

Vamos usar as tabelas do exercício de relacionamentos: `editoras` e `livros`.

Considere que a estrutura do banco já foi criada anteriormente.

### Carga inicial na tabela `editoras`

```sql
INSERT INTO editoras (nome_editora)
VALUES
    ('Novatec'),
    ('Casa do Codigo'),
    ('Alta Books');
```

### Carga inicial na tabela `livros`

```sql
INSERT INTO livros (titulo, id_editora)
VALUES
    ('SQL para Iniciantes', 1),
    ('Modelagem de Dados na Pratica', 1),
    ('Banco de Dados para Web', 2);
```

---

## Erro Comum no `INSERT INTO`

Ao tentar inserir um livro com `id_editora` inexistente, o banco bloqueia a operação por integridade referencial.

```sql
INSERT INTO livros (titulo, id_editora)
VALUES ('Livro com Editora Inexistente', 999);
```

Esse teste é importante para validar se a `FOREIGN KEY` está funcionando.

---

## Prática de Revisão

1. Insira uma nova editora chamada `Pearson`.
2. Cadastre dois livros para essa editora.
3. Tente cadastrar um livro com `id_editora = 500` e registre o erro retornado.

---

## Fechamento

`INSERT INTO` é o primeiro passo da manipulação de dados em SQL. Dominar a carga inicial facilita testes, validações e as próximas operações de `UPDATE` e `DELETE`.
