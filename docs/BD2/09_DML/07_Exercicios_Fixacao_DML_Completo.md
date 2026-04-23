# Exercícios de Fixação: Script DML Completo

> Construa do zero um script SQL completo com estrutura, carga inicial, atualizações e exclusões de dados.

---

## Contexto

Você vai montar o banco `biblioteca_relacional` para controlar editoras e livros.

Siga cada etapa abaixo em ordem. Ao final, seu script deve cobrir todos os comandos DML estudados: `INSERT INTO`, `UPDATE` e `DELETE`.

---

## Estrutura do Banco

1. Crie o banco `biblioteca_relacional` caso ele não exista e selecione-o para uso.

2. Antes de criar as tabelas, descarte-as se já existirem (na ordem correta para respeitar as dependências de chave estrangeira).

3. Crie a tabela `editoras` com:

    - `id_editora` (INT, auto incremento, chave primária)
    - `nome_editora` (VARCHAR(100), obrigatório)

4. Crie a tabela `livros` com:

    - `id_livro` (INT, auto incremento, chave primária)
    - `titulo` (VARCHAR(120), obrigatório)
    - `id_editora` (INT, obrigatório)
    - `FOREIGN KEY` ligando `livros.id_editora` a `editoras.id_editora` com `ON DELETE RESTRICT` e `ON UPDATE CASCADE`

---

## Carga Inicial de Dados

5. Insira as três editoras a seguir, nessa ordem:
    - `Novatec`
    - `Casa do Codigo`
    - `Alta Books`

6. Insira os quatro livros abaixo, associando cada um à editora correta pelo `id_editora`:
    - `SQL para Iniciantes` — editora `Novatec`
    - `Modelagem de Dados na Pratica` — editora `Novatec`
    - `Banco de Dados para Web` — editora `Casa do Codigo`
    - `Guia de Integridade Referencial` — editora `Alta Books`

---

## Atualização de Dados

7. Atualize o nome da editora de `id_editora = 2` para `Casa do Codigo LTDA`.

8. Atualize o título do livro de `id_livro = 1` para `SQL para Iniciantes - Edicao Revisada`.

---

## Exclusão de Dados

9. Exclua o livro de `id_livro = 4`.

10. Tente excluir a editora de `id_editora = 1` e registre o comportamento retornado pelo MySQL.

---

## Conferência Final

11. Execute `SELECT *` nas tabelas `editoras` e `livros` para confirmar o estado final dos dados.

---

## Checklist de Entrega

- [ ] Script SQL com `CREATE DATABASE`, `DROP` e criação das duas tabelas com `FOREIGN KEY`.
- [ ] `INSERT INTO` com as editoras e livros especificados.
- [ ] `UPDATE` aplicado na editora e no livro indicados.
- [ ] `DELETE` do livro especificado.
- [ ] Evidência do bloqueio ao tentar excluir a editora com livros vinculados.
- [ ] `SELECT *` final das duas tabelas.
