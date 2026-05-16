# Quiz de Revisão: SELECT com Múltiplas Condições

Revise como combinar filtros e ordenação em uma consulta SQL.

---

<quiz>
Em uma consulta combinada, a cláusula responsável por filtrar linhas é:

* [ ] `ORDER BY`
* [ ] `AS`
* [x] `WHERE`
* [ ] `FROM`
</quiz>

<quiz>
Qual consulta usa corretamente `AND` e `BETWEEN`?

* [x] `WHERE status_pedido = 'Entregue' AND valor_total BETWEEN 300 AND 900`
* [ ] `WHERE status_pedido BETWEEN 'Entregue' AND valor_total = 900`
* [ ] `WHERE AND status_pedido = 'Entregue' BETWEEN 300 AND 900`
* [ ] `WHERE valor_total = 300 AND 900`
</quiz>

<quiz>
A cláusula `IN ('Pix', 'Cartao')` é equivalente a:

* [x] `forma_pagamento = 'Pix' OR forma_pagamento = 'Cartao'`
* [ ] `forma_pagamento = 'Pix' AND forma_pagamento = 'Cartao'`
* [ ] `forma_pagamento BETWEEN 'Pix' AND 'Cartao'`
* [ ] `NOT forma_pagamento = 'Pix'`
</quiz>

<quiz>
Sem parênteses, o SQL normalmente avalia primeiro:

* [ ] `OR`
* [x] `AND`
* [ ] `ORDER BY`
* [ ] `IN`
</quiz>

<quiz>
Qual opção ordena primeiro por data mais recente e depois por maior valor?

* [ ] `ORDER BY data_pedido ASC, valor_total ASC`
* [ ] `ORDER BY valor_total DESC, data_pedido ASC`
* [x] `ORDER BY data_pedido DESC, valor_total DESC`
* [ ] `ORDER BY data_pedido, valor_total`
</quiz>

<quiz>
No trecho `SELECT cliente AS nome_cliente`, `nome_cliente` é:

* [ ] Um novo campo criado na tabela
* [x] Um alias exibido apenas no resultado da consulta
* [ ] Uma constraint de coluna
* [ ] Um índice da tabela
</quiz>

<quiz>
Qual filtro retorna apenas pedidos não cancelados?

* [ ] `WHERE status_pedido = 'Cancelado'`
* [x] `WHERE NOT status_pedido = 'Cancelado'`
* [ ] `WHERE status_pedido IN ('Cancelado')`
* [ ] `WHERE status_pedido BETWEEN 'A' AND 'Z'`
</quiz>

<quiz>
A consulta abaixo retorna quais pedidos?

`WHERE (cidade_entrega = 'Sorocaba' OR cidade_entrega = 'Itu') AND valor_total > 500`

* [ ] Todos os pedidos de qualquer cidade
* [ ] Pedidos de Sorocaba com qualquer valor
* [x] Pedidos de Sorocaba ou Itu, desde que valor_total seja maior que 500
* [ ] Apenas pedidos de Itu com valor menor que 500
</quiz>

<!-- mkdocs-quiz results -->
