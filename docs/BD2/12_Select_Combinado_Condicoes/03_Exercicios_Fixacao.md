# Exercícios de Fixação: SELECT com Várias Condições

> Pratique consultas combinando `SELECT`, `WHERE`, operadores lógicos e `ORDER BY`.

---

## Contexto

Você vai trabalhar com o banco `bd2_selects_combinados`.

Use a tabela `pedidos` com os campos:

- `id_pedido` (INT, PK, auto incremento)
- `cliente` (VARCHAR(100), obrigatório)
- `cidade_entrega` (VARCHAR(80), obrigatório)
- `status_pedido` (VARCHAR(30), obrigatório)
- `canal_venda` (VARCHAR(30), obrigatório)
- `forma_pagamento` (VARCHAR(30), obrigatório)
- `valor_total` (DECIMAL(10,2), obrigatório)
- `data_pedido` (DATE, obrigatório)

A base já possui vários registros no arquivo de carga.

---

## Parte A: Seleção e Filtro Inicial

1. Liste `cliente`, `cidade_entrega`, `status_pedido` e `valor_total` de todos os pedidos.
2. Liste pedidos com `status_pedido = 'Entregue'` e `valor_total >= 500`.
3. Liste pedidos com `forma_pagamento` em `Pix` ou `Cartao`.

---

## Parte B: Filtros Combinados

4. Liste pedidos da cidade `Sorocaba` ou `Itu` com valor entre 300 e 1300.
5. Liste pedidos que não estão com status `Cancelado` e foram feitos no canal `Site`.
6. Liste pedidos com status `Em separacao` ou `Pendente`, desde que o valor seja maior que 400.

---

## Parte C: Ordenação e Organização

7. Exiba `cliente`, `cidade_entrega`, `valor_total` e `data_pedido` dos pedidos não cancelados,
   ordenando por data mais recente e, em caso de empate, por maior valor.
8. Exiba pedidos de `Marketplace` com pagamento em `Cartao`, ordenando por valor do maior para o menor.

---

## Desafio de Consolidação

9. Monte uma consulta única que retorne pedidos que atendam a todos os critérios abaixo:

- cidade em `Sorocaba`, `Itu` ou `Salto`
- status diferente de `Cancelado`
- valor entre 450 e 1600
- forma de pagamento em `Pix` ou `Cartao`
- ordenação por `cidade_entrega` (A-Z) e `valor_total` (maior para menor)

??? tip "Dica para montar a consulta final"
    Monte o `WHERE` em blocos: primeiro cidade, depois status, depois faixa de valor e por fim pagamento. No final, aplique o `ORDER BY`.

---

## Checklist de Entrega

- [ ] Script SQL com as consultas de todas as partes.
- [ ] Evidências de resultado das consultas 7, 8 e 9.
- [ ] Consulta do desafio escrita com boa organização e indentação.
