# Exercícios de Fixação: `FOREIGN KEY` e Integridade Referencial

> Pratique relacionamentos entre tabelas aplicando chave estrangeira em um cenário de biblioteca.

---

## Contexto

Você vai montar um banco simples para controlar editoras e livros.

Crie o banco `biblioteca_relacional` e resolva as etapas abaixo usando SQL.

---

## Parte de Estrutura

1. Crie a tabela `editoras` com:
- `id_editora` (INT, auto incremento, PK)
- `nome_editora` (VARCHAR(100), obrigatório)

2. Crie a tabela `livros` com:
- `id_livro` (INT, auto incremento, PK)
- `titulo` (VARCHAR(120), obrigatório)
- `id_editora` (INT, obrigatório)
- `FOREIGN KEY` ligando `livros.id_editora` a `editoras.id_editora`

---

## Parte de Testes

3. Insira duas editoras válidas.
4. Insira dois livros apontando para editoras existentes.
5. Tente inserir um livro com `id_editora` inexistente e registre o erro retornado.

---

## Parte de Regras de Exclusão

6. Crie novamente a tabela `livros` (ou ajuste com `ALTER`) definindo `ON DELETE RESTRICT` na chave estrangeira.
7. Tente excluir uma editora que possui livros cadastrados.
8. Registre em 2 linhas por que o bloqueio de exclusão é importante para a integridade dos dados.

---

## Desafio Opcional

Refaça a estrutura de `livros` com `ON DELETE CASCADE` e compare o comportamento no momento da exclusão de uma editora.

??? tip "Dica para conferência"
    Use `DESCRIBE` e `SHOW CREATE TABLE` para confirmar se a `FOREIGN KEY` e as regras de `ON DELETE` foram aplicadas como esperado.

---

## Checklist de Entrega

- [ ] Script SQL com criação das tabelas e chave estrangeira.
- [ ] Evidência de inserção válida e inválida.
- [ ] Evidência do teste com `ON DELETE RESTRICT`.
- [ ] Explicação curta sobre integridade referencial.
