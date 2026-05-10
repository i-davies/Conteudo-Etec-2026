# Exercícios de Fixação: Filtros com `AND`, `OR`, `NOT`, `BETWEEN` e `IN`

> Pratique consultas com múltiplas condições em um cenário de pedidos.

---

## Contexto

Você vai trabalhar no banco `comercial_filtros`.

Use a tabela `pedidos` com os campos:

- `id_pedido` (INT, PK, auto incremento)
- `cliente` (VARCHAR(100), obrigatório)
- `cidade` (VARCHAR(80), obrigatório)
- `status_pedido` (VARCHAR(30), obrigatório)
- `valor_total` (DECIMAL(10,2), obrigatório)
- `data_pedido` (DATE, obrigatório)

Insira ao menos 12 pedidos com cidades, status, datas e valores variados.

---

## Parte A: Filtros Diretos

1. Liste pedidos com `valor_total` entre 200 e 800.
2. Liste pedidos das cidades `Sorocaba`, `Itu` e `Salto` usando `IN`.
3. Liste pedidos que **não** estão com status `Entregue`.

---

## Parte B: Combinações Lógicas

4. Liste pedidos da cidade `Sorocaba` com valor acima de 500 (`AND`).
5. Liste pedidos da cidade `Itu` **ou** com valor acima de 1000 (`OR`).
6. Liste pedidos com status `Pendente` ou `Em separacao` e valor entre 100 e 900.

---

## Parte C: Controle de Precedência

7. Escreva duas consultas diferentes:
- uma sem parênteses combinando `AND` e `OR`
- outra com parênteses para alterar o resultado

8. Compare os resultados e explique em até 4 linhas a diferença observada.

---

## Desafio Opcional

Monte uma consulta para retornar pedidos:

- com data entre `2026-03-01` e `2026-04-30`
- de cidades em uma lista com `IN`
- excluindo status `Cancelado` com `NOT`

??? tip "Dica para conferência"
    Em filtros avançados, valide primeiro cada condição separadamente e depois combine os blocos lógicos.

---

## Checklist de Entrega

- [ ] Script SQL com os filtros de todas as partes.
- [ ] Evidência dos resultados das consultas principais.
- [ ] Comparação entre consulta sem e com parênteses.
- [ ] Resposta explicando o impacto da precedência lógica.
