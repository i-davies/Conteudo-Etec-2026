# DML no MySQL: `UPDATE` para Alteração de Dados

> Nesta etapa, vamos atualizar registros já existentes com segurança usando o comando `UPDATE`.

---

## Objetivos da Aula

Ao final desta sequência, você será capaz de:

1. Entender quando usar `UPDATE`.
2. Atualizar um ou mais campos de registros existentes.
3. Usar filtros com `WHERE` para evitar alterações indevidas.
4. Validar o resultado da atualização com `SELECT`.

---

## O que o `UPDATE` faz

O `UPDATE` altera valores em linhas que já existem na tabela.

Sem `WHERE`, todas as linhas podem ser afetadas.

---

## Sintaxe Básica do `UPDATE`

Atualizando um campo:

```sql
UPDATE nome_tabela
SET coluna = novo_valor
WHERE condição;
```

Atualizando mais de um campo:

```sql
UPDATE nome_tabela
SET coluna1 = novo_valor1,
    coluna2 = novo_valor2
WHERE condição;
```

??? tip "Boas práticas"
    Sempre execute um `SELECT` com o mesmo `WHERE` antes do `UPDATE`.
    Assim você confirma quais registros serão alterados.

---

## Exemplo com `biblioteca_relacional`

### Atualizando nome de editora

```sql
UPDATE editoras
SET nome_editora = 'Casa do Código LTDA'
WHERE id_editora = 2;
```

### Atualizando título de livro

```sql
UPDATE livros
SET titulo = 'SQL para Iniciantes - Edição Revisada'
WHERE id_livro = 1;
```

### Conferindo resultado

```sql
SELECT * FROM editoras;
SELECT * FROM livros;
```

---

## Erro Comum no `UPDATE`

Alterar sem filtro pode impactar toda a tabela.

```sql
UPDATE livros
SET titulo = 'Titulo alterado sem filtro';
```

Esse comando atualiza todos os registros de `livros`.

---

## Prática de Revisão

1. Atualize o preço de um produto na tabela `produtos`.
2. Atualize o nome de uma categoria específica.
3. Rode um `SELECT` antes e depois do `UPDATE` para comparar os dados.

---

## Fechamento

`UPDATE` é essencial para manutenção de dados. Com `WHERE` bem definido e validação por `SELECT`, você evita erros e preserva a qualidade do banco.
