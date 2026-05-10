# DQL no MySQL: `SELECT`, Alias e `ORDER BY`

> Nesta unidade, vamos começar a consultar dados com `DQL`, usando seleção de colunas, apelidos com `AS` e ordenação de resultados.

---

## Objetivos da Aula

Ao final desta sequência, você será capaz de:

1. Entender o papel de `DQL` no banco de dados.
2. Consultar dados com `SELECT` simples.
3. Renomear colunas no resultado com `AS`.
4. Ordenar registros com `ORDER BY` em ordem crescente e decrescente.

---

## O que é DQL

`DQL` significa **Data Query Language** (Linguagem de Consulta de Dados).

Na prática, é a parte do SQL usada para buscar informações que já estão salvas nas tabelas.

O comando principal de `DQL` é o `SELECT`.

---

??? example "Script SQL base da aula"
    Antes de iniciar os exemplos, execute o script abaixo no MySQL para criar o banco e carregar os dados.

    **Arquivo:** [05_SQL_Base_DQL.sql](05_SQL_Base_DQL.sql)


---

## `SELECT` Simples

Consulta básica de colunas específicas:

```sql
SELECT nome_coluna1, nome_coluna2
FROM nome_tabela;
```

Consulta de todas as colunas:

```sql
SELECT *
FROM nome_tabela;
```

??? tip "Boas práticas"
    Evite usar `SELECT *` em sistemas reais. Prefira informar somente as colunas necessárias para melhorar leitura e desempenho.

---

## Alias com `AS`

Alias é um apelido temporário para uma coluna no resultado da consulta.

```sql
SELECT
    nome_produto AS produto,
    preco AS valor
FROM produtos;
```

O nome da coluna na tabela não muda. O alias só aparece na exibição do resultado.

Também é possível usar alias com espaço no nome:

```sql
SELECT
    nome_produto AS 'Nome do Produto',
    preco AS 'Preco Unitario'
FROM produtos;
```

---

## Ordenação com `ORDER BY`

Use `ORDER BY` para definir a ordem de exibição dos dados.

Ordem crescente (`ASC`):

```sql
SELECT nome_produto, preco
FROM produtos
ORDER BY preco ASC;
```

Ordem decrescente (`DESC`):

```sql
SELECT nome_produto, preco
FROM produtos
ORDER BY preco DESC;
```

Ordenação por mais de uma coluna:

```sql
SELECT nome_produto, categoria, preco
FROM produtos
ORDER BY categoria ASC, preco DESC;
```

Nesse caso, primeiro ordena por `categoria`. Em empate, usa `preco`.

---

## Exemplo Guiado

Considere a tabela `clientes` com os campos:

- `id_cliente`
- `nome`
- `cidade`
- `limite_credito`

Consultando clientes com alias e ordenação:

```sql
SELECT
    nome AS cliente,
    cidade,
    limite_credito AS credito
FROM clientes
ORDER BY limite_credito DESC;
```

Esse relatório mostra primeiro os clientes com maior limite de crédito.

---

## Prática de Revisão

1. Liste nome e cidade dos clientes.
2. Mostre nome e limite de crédito usando alias.
3. Exiba os clientes ordenados por nome em ordem alfabética.
4. Exiba os clientes ordenados por limite de crédito do maior para o menor.

---

## Fechamento

Com `SELECT`, `AS` e `ORDER BY`, você já consegue montar relatórios simples e organizados. Na próxima etapa, vamos filtrar resultados com mais precisão usando condições.

