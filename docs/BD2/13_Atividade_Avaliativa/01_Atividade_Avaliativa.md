# Atividade Avaliativa em Sala

> Esta atividade vale nota e deve ser feita individualmente em sala de aula.

---

## Tema da Atividade

Consultas SQL com DQL, filtros avançados e select combinado em um cenário comercial.

## Objetivo

Aplicar os conteúdos estudados em BD2 até esta etapa, integrando seleção de colunas, alias, filtros lógicos, faixas de valor, listas de valores e ordenação em consultas simples e combinadas.

## Requisitos obrigatórios

- Executar o banco base da atividade no arquivo:
    - [02_SQL_Base_Atividade_Avaliativa.sql](02_SQL_Base_Atividade_Avaliativa.sql)
- Utilizar o banco `bd2_avaliativa_consultas` para resolver a atividade.
- Elaborar um arquivo SQL com uma única consulta integradora.
- A consulta deve conter obrigatoriamente:
    - `SELECT` de colunas específicas;
    - filtros com `AND`, `OR`, `NOT`, `IN` e `BETWEEN`;
    - uso correto de parênteses para precedência lógica;
    - ordenação com `ORDER BY`.

### Consulta solicitada

Monte uma única consulta que retorne `cliente`, `cidade_entrega`, `status_pedido`, `canal_venda`, `forma_pagamento`, `valor_total` e `data_pedido`, considerando:

- cidades em `Sorocaba`, `Itu`, `Salto` ou `Votorantim`;
- status diferente de `Cancelado`;
- valor entre `650` e `1800`;
- canal em `Site` ou `Marketplace`, ou pagamento `Pix` com cidade `Sorocaba`;
- ordenação por `cidade_entrega` (A-Z), `data_pedido` (mais recente) e `valor_total` (maior para menor).

??? tip "Estratégia para montar a consulta final"
        Separe o `WHERE` em blocos lógicos: cidades, status, faixa de valor e regra composta de canal/pagamento. Use parênteses para controlar a precedência entre `AND` e `OR`.

## Critérios de Correção

- 3,0 pts: seleção correta das colunas solicitadas.
- 3,0 pts: uso correto dos filtros (`AND`, `OR`, `NOT`, `IN`, `BETWEEN`) e precedência lógica.
- 2,0 pts: ordenação correta dos resultados com `ORDER BY`.
- 2,0 pts: aplicação correta da regra composta de canal em `Site` ou `Marketplace`, ou pagamento `Pix` com cidade `Sorocaba`.

## Entrega 

- Arquivo SQL com a consulta via Teams, nomeado como `AT2_BD2_2B_T1_nome_sobrenome.sql`.
- Evidência de execução da consulta final.