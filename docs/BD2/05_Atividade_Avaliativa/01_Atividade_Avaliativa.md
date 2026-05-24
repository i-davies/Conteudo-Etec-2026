# Atividade Avaliativa: DQL, Filtros Avançados e Select Combinado

> Esta atividade vale nota e deve ser feita individualmente em sala.

---

## Objetivo

Consolidar os conteúdos de:

- `SELECT` e `AS`
- `WHERE` com `AND`, `OR`, `NOT`
- `IN` e `BETWEEN`
- `ORDER BY`
- organização de consultas combinadas em uma única query

---

## Banco Base da Atividade

Use o banco `bd2_avaliativa_consultas`, já preparado para esta atividade.

Faça o download e execute primeiro o arquivo:

- [02_SQL_Base_Atividade_Avaliativa.sql](02_SQL_Base_Atividade_Avaliativa.sql)

---

## Cenário

Você trabalha em uma loja virtual que registra pedidos de diferentes cidades, canais de venda e formas de pagamento.

Seu papel é gerar consultas para apoiar decisões da equipe comercial.

---

## Parte A: Consultas Diretas

1. Liste `cliente`, `cidade_entrega`, `status_pedido` e `valor_total` de todos os pedidos.
2. Liste pedidos com `status_pedido = 'Entregue'` e `valor_total >= 700`.
3. Liste pedidos com `forma_pagamento` em `Pix` ou `Cartao`.
4. Exiba `cliente AS cliente_nome`, `canal_venda AS canal` e `valor_total AS total_pedido`.

---

## Parte B: Filtros Avançados

5. Liste pedidos de `Sorocaba`, `Itu` e `Salto` com `IN`.
6. Liste pedidos com valor entre `500` e `1400` usando `BETWEEN`.
7. Liste pedidos que **não** estejam com status `Cancelado`.
8. Liste pedidos da cidade `Sorocaba` com valor acima de `900`.

---

## Parte C: Combinações Lógicas

9. Liste pedidos com status `Pendente` ou `Em separacao`, desde que valor seja maior que `600`.
10. Liste pedidos de `Site` ou `Marketplace` com pagamento em `Pix`.
11. Liste pedidos não cancelados, ordenando por `data_pedido` (mais recente primeiro) e por `valor_total` (maior para menor).

---

## Desafio Final Integrador

12. Monte **uma única consulta** que utilize a maior parte dos conteúdos estudados juntos e retorne:

- `cliente`, `cidade_entrega`, `status_pedido`, `canal_venda`, `forma_pagamento`, `valor_total`, `data_pedido`
- apenas pedidos de `Sorocaba`, `Itu`, `Salto` ou `Votorantim`
- com status diferente de `Cancelado`
- com valor entre `650` e `1800`
- em que:
    - o canal seja `Site` ou `Marketplace`, **ou**
    - o pagamento seja `Pix` e a cidade seja `Sorocaba`
- ordenação por `cidade_entrega` (A-Z), depois `data_pedido` (mais recente) e por fim `valor_total` (maior para menor)

??? tip "Estratégia para montar a query final"
        Separe o `WHERE` em blocos lógicos com parênteses: cidades, status, faixa de valor e regra composta de canal/pagamento. Isso evita erro de precedência entre `AND` e `OR`.

---

## Entrega

- Arquivo SQL com as 12 consultas: `ATV_BD2_consultas_nome_sobrenome.sql`
- Evidência de execução das consultas `11` e `12`

---

## Critérios de Correção

- `3,0 pts`: uso correto de seleção de colunas e alias
- `3,0 pts`: uso correto dos filtros (`AND`, `OR`, `NOT`, `IN`, `BETWEEN`)
- `2,0 pts`: organização e legibilidade das consultas
- `2,0 pts`: construção correta da consulta integradora com ordenação completa

---

## Gabarito

Arquivo para conferência do professor:

- [03_Gabarito_Atividade_Avaliativa.sql](03_Gabarito_Atividade_Avaliativa.sql)
