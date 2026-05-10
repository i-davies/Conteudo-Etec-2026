# Exercícios de Fixação: `SELECT`, `AS` e `ORDER BY`

> Pratique consultas básicas para montar relatórios de uma loja.

---

## Contexto

Você vai trabalhar com um banco chamado `loja_consultas`.

Use a tabela `produtos` com os campos:

- `id_produto` (INT, PK, auto incremento)
- `nome_produto` (VARCHAR(120), obrigatório)
- `categoria` (VARCHAR(60), obrigatório)
- `preco` (DECIMAL(10,2), obrigatório)
- `estoque` (INT, obrigatório)

Se necessário, crie a tabela e insira ao menos 8 produtos de categorias diferentes.

---

## Consultas Básicas

1. Liste todas as colunas da tabela `produtos`.
2. Liste apenas `nome_produto`, `categoria` e `preco`.
3. Mostre `nome_produto` com alias `produto` e `preco` com alias `valor`.

---

## Ordenação de Resultados

4. Liste `nome_produto` e `preco` em ordem crescente de preço.
5. Liste `nome_produto` e `preco` em ordem decrescente de preço.
6. Liste `categoria`, `nome_produto` e `preco` ordenando por categoria (A-Z) e, dentro da categoria, por preço do maior para o menor.

---

## Interpretação de Relatório

7. Escreva em até 3 linhas a diferença entre:
- usar `SELECT *`
- selecionar colunas específicas

8. Explique em 2 linhas por que alias com `AS` pode facilitar a leitura de relatórios.

---

## Checklist de Entrega

- [ ] Script SQL com as consultas solicitadas.
- [ ] Evidências de resultado para as consultas de ordenação.
- [ ] Respostas curtas das questões de interpretação.
