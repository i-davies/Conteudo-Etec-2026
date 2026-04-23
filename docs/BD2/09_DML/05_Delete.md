# `DELETE` para Remoção de Dados

> Nesta etapa, vamos remover registros de forma controlada usando o comando `DELETE`.

---

## Objetivos da Aula

Ao final desta sequência, você será capaz de:

1. Entender quando usar `DELETE`.
2. Remover registros com segurança usando `WHERE`.
3. Compreender o impacto de `FOREIGN KEY` em exclusões.
4. Validar exclusões com consultas de conferência.

---

## O que o `DELETE` faz

O `DELETE` remove linhas de uma tabela.

Sem `WHERE`, todas as linhas da tabela podem ser removidas.

---

## Sintaxe Básica do `DELETE`

Removendo registros com condição:

```sql
DELETE FROM nome_tabela
WHERE condição;
```

??? tip "Boas práticas"
    Antes de executar `DELETE`, rode um `SELECT` com o mesmo filtro.
    Em ambiente real, prefira usar transação quando possível.

---

## Exemplo com `biblioteca_relacional`

### Removendo um livro específico

```sql
DELETE FROM livros
WHERE id_livro = 3;
```

### Tentando remover uma editora com livros vinculados

```sql
DELETE FROM editoras
WHERE id_editora = 1;
```

Se houver `FOREIGN KEY` com `RESTRICT`, o banco bloqueia a exclusão.

### Conferindo resultado

```sql
SELECT * FROM editoras;
SELECT * FROM livros;
```

---

## Erro Comum no `DELETE`

Remover todos os registros por falta de filtro:

```sql
DELETE FROM livros;
```

Esse comando esvazia a tabela `livros`.

---

## Prática de Revisão

1. Exclua um registro específico de produtos por `id_produto`.
2. Tente excluir uma categoria que tenha produtos vinculados.
3. Registre o comportamento retornado pelo MySQL.

---

## Fechamento

`DELETE` exige cuidado redobrado. O uso correto de `WHERE` e a compreensão das regras de integridade referencial evitam perda indevida de dados.
