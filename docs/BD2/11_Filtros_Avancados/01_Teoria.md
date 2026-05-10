# Filtros Avançados no MySQL: `AND`, `OR`, `NOT`, `BETWEEN` e `IN`

> Nesta unidade, vamos refinar consultas com filtros combinados para retornar apenas os registros que interessam.

---

## Objetivos da Aula

Ao final desta sequência, você será capaz de:

1. Filtrar resultados com condições lógicas.
2. Combinar critérios com `AND`, `OR` e `NOT`.
3. Selecionar intervalos com `BETWEEN`.
4. Filtrar múltiplos valores com `IN`.
5. Organizar filtros complexos com parênteses.

---

## Relembrando o `WHERE`

Para aplicar condições em uma consulta, usamos a cláusula `WHERE`.

```sql
SELECT coluna1, coluna2
FROM tabela
WHERE condicao;
```

Sem `WHERE`, o `SELECT` retorna todos os registros da tabela.

---

??? example "Script SQL base da aula"
    Antes de iniciar os exemplos, execute o script abaixo no MySQL Workbench para criar o banco e carregar os dados.

    **Arquivo:** [05_SQL_Base_Filtros.sql](05_SQL_Base_Filtros.sql)
---

## Operador `AND`

Com `AND`, as duas condições precisam ser verdadeiras.

```sql
SELECT nome_produto, categoria, preco
FROM produtos
WHERE categoria = 'Eletronicos' AND preco <= 3000;
```

Esse filtro retorna apenas produtos da categoria indicada e dentro do limite de preço.

---

## Operador `OR`

Com `OR`, basta uma das condições ser verdadeira.

```sql
SELECT nome_produto, categoria
FROM produtos
WHERE categoria = 'Livros' OR categoria = 'Papelaria';
```

---

## Operador `NOT`

`NOT` inverte o resultado de uma condição.

```sql
SELECT nome_produto, categoria
FROM produtos
WHERE NOT categoria = 'Informatica';
```

Também pode ser usado com outros operadores.

```sql
SELECT nome_produto, preco
FROM produtos
WHERE NOT preco < 100;
```

---

## Intervalo com `BETWEEN`

`BETWEEN` facilita consultas por faixa de valores.

```sql
SELECT nome_produto, preco
FROM produtos
WHERE preco BETWEEN 100 AND 500;
```

O intervalo inclui os limites inicial e final.

Para datas:

```sql
SELECT id_pedido, data_pedido
FROM pedidos
WHERE data_pedido BETWEEN '2026-01-01' AND '2026-03-31';
```

---

## Lista de Valores com `IN`

Use `IN` quando precisar comparar com uma lista.

```sql
SELECT nome_produto, categoria
FROM produtos
WHERE categoria IN ('Livros', 'Papelaria', 'Eletronicos');
```

Equivale a vários `OR`, mas com leitura melhor.

---

## Precedência e Parênteses

Sem parênteses, o SQL avalia `AND` antes de `OR`.

```sql
SELECT nome_produto, categoria, preco
FROM produtos
WHERE categoria = 'Livros' OR categoria = 'Papelaria' AND preco < 80;
```

Para deixar a lógica clara, prefira parênteses:

```sql
SELECT nome_produto, categoria, preco
FROM produtos
WHERE (categoria = 'Livros' OR categoria = 'Papelaria')
  AND preco < 80;
```

??? tip "Dica"
    Em filtros com mais de um operador lógico, use parênteses mesmo quando você souber a precedência. Isso evita erros de interpretação no time.

---

## Prática de Revisão

1. Liste produtos com preço entre 50 e 200.
2. Liste clientes das cidades `Sorocaba`, `Itu` ou `Salto`.
3. Liste pedidos que não foram entregues.
4. Monte uma consulta com `AND` e `OR` usando parênteses para evitar ambiguidades.

---

## Fechamento

Com filtros avançados, suas consultas ficam mais úteis para análise e tomada de decisão. Esse domínio é essencial para relatórios reais, dashboards e regras de negócio.
