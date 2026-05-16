# SELECT com Múltiplas Condições e Ordenação

> Nesta unidade, vamos combinar os conceitos de `SELECT`, filtros no `WHERE` e `ORDER BY` para montar consultas mais completas.

---

## Objetivos da Aula

Ao final desta sequência, você será capaz de:

1. Montar consultas com várias condições usando `AND`, `OR`, `NOT`, `IN` e `BETWEEN`.
2. Organizar a lógica dos filtros com parênteses para evitar ambiguidades.
3. Exibir colunas com alias usando `AS`.
4. Ordenar resultados com `ORDER BY` em uma ou mais colunas.
5. Escrever consultas mais próximas de cenários reais de relatório.

---

## Estrutura de uma Consulta Combinada

Quando juntamos seleção, filtro e ordenação, a estrutura costuma seguir este modelo:

```sql
SELECT colunas
FROM tabela
WHERE condicoes
ORDER BY colunas_de_ordenacao;
```

A ideia é simples:

- `SELECT`: define o que será exibido.
- `WHERE`: define quais linhas entram no resultado.
- `ORDER BY`: define como o resultado será organizado.

---

??? example "Script SQL base da aula"
    Antes de iniciar os exemplos, execute o script abaixo no MySQL Workbench para criar o banco e carregar uma base maior de dados.

    **Arquivo:** [05_SQL_Base_Select_Combinado.sql](05_SQL_Base_Select_Combinado.sql)

---

## Exemplo Progressivo

### Etapa 1: seleção simples

```sql
SELECT cliente, cidade_entrega, valor_total
FROM pedidos;
```

### Etapa 2: seleção com múltiplas condições

```sql
SELECT cliente, cidade_entrega, valor_total, status_pedido
FROM pedidos
WHERE status_pedido = 'Entregue'
  AND valor_total >= 300;
```

### Etapa 3: seleção com filtros combinados e ordenação

```sql
SELECT
    cliente AS nome_cliente,
    cidade_entrega AS cidade,
    valor_total AS total,
    data_pedido
FROM pedidos
WHERE (cidade_entrega IN ('Sorocaba', 'Itu', 'Salto'))
  AND status_pedido <> 'Cancelado'
  AND valor_total BETWEEN 200 AND 1500
ORDER BY data_pedido DESC, valor_total DESC;
```

---

## Combinando `AND` e `OR` com Segurança

Sem parênteses, o SQL dá prioridade para `AND` antes de `OR`.

```sql
SELECT cliente, cidade_entrega, valor_total
FROM pedidos
WHERE cidade_entrega = 'Sorocaba'
   OR cidade_entrega = 'Itu'
  AND valor_total > 500;
```

Para deixar a intenção explícita, use parênteses:

```sql
SELECT cliente, cidade_entrega, valor_total
FROM pedidos
WHERE (cidade_entrega = 'Sorocaba' OR cidade_entrega = 'Itu')
  AND valor_total > 500;
```

??? tip "Boa prática"
    Em consultas com três ou mais condições, escreva cada condição em uma linha e sempre use parênteses para agrupar blocos lógicos.

---

## Filtros Úteis para Relatórios

### Faixa de valores com `BETWEEN`

```sql
SELECT cliente, valor_total
FROM pedidos
WHERE valor_total BETWEEN 400 AND 1200;
```

### Lista de valores com `IN`

```sql
SELECT cliente, forma_pagamento
FROM pedidos
WHERE forma_pagamento IN ('Cartao', 'Pix');
```

### Exclusão com `NOT`

```sql
SELECT cliente, status_pedido
FROM pedidos
WHERE NOT status_pedido = 'Cancelado';
```

### Texto parcial com `LIKE`

```sql
SELECT cliente, cidade_entrega
FROM pedidos
WHERE cidade_entrega LIKE 'S%';
```

---

## Prática de Revisão

1. Liste cliente, cidade e valor total dos pedidos.
2. Filtre pedidos com status `Entregue` e valor acima de 500.
3. Mostre pedidos de `Sorocaba` ou `Itu` com valor entre 300 e 1200.
4. Exiba pedidos não cancelados, ordenando por data mais recente e maior valor.

---

## Fechamento

Ao combinar `SELECT`, filtros e ordenação, você transforma dados em informação útil. Esse domínio é base para relatórios, dashboards e análises no dia a dia de sistemas.
