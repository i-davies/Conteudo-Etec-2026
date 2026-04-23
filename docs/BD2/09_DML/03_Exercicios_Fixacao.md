# Exercícios de Fixação: DML com `INSERT INTO` e `FOREIGN KEY`

> Pratique a criação de estrutura relacional e a carga inicial de dados com `INSERT INTO` em um cenário de vendas.

---

## Contexto

Você vai montar um banco para controlar categorias e produtos de uma loja.

Crie o banco `loja_relacional` e resolva as etapas abaixo usando SQL.

---

## Estrutura do Banco

1. Crie a tabela `categorias` com:

- `id_categoria` (INT, auto incremento, chave primária)
- `nome_categoria` (VARCHAR(80), obrigatório)

2. Crie a tabela `produtos` com:

- `id_produto` (INT, auto incremento, chave primária)
- `nome_produto` (VARCHAR(120), obrigatório)
- `preco` (DECIMAL(10,2), obrigatório)
- `id_categoria` (INT, obrigatório)
- `FOREIGN KEY` ligando `produtos.id_categoria` a `categorias.id_categoria`

---

## Carga Inicial de Dados

3. Insira três categorias válidas.
4. Insira cinco produtos apontando para categorias existentes.

---

## Validação de Integridade

5. Tente inserir um produto com `id_categoria` inexistente.
6. Insira o comando DML usado e registre o erro retornado pelo MySQL.

---

## Checklist de Entrega

- [ ] Script SQL com criação das tabelas e relacionamento por `FOREIGN KEY`.
- [ ] Script com `INSERT INTO` da carga inicial de categorias e produtos.
- [ ] Evidência do teste inválido de integridade referencial.
