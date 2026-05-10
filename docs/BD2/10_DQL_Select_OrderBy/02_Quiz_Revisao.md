# Quiz de Revisão: `SELECT`, `AS` e `ORDER BY`

Revise os conceitos básicos de consulta e organização de resultados no MySQL.

---

<quiz>
O comando principal de `DQL` é:

* [ ] `UPDATE`
* [ ] `DELETE`
* [x] `SELECT`
* [ ] `ALTER`
</quiz>

<quiz>
Qual consulta retorna todas as colunas de uma tabela chamada `alunos`?

* [x] `SELECT * FROM alunos;`
* [ ] `SELECT alunos FROM *;`
* [ ] `GET * FROM alunos;`
* [ ] `SHOW alunos *;`
</quiz>

<quiz>
Para renomear uma coluna no resultado da consulta, usamos:

* [ ] `ON`
* [x] `AS`
* [ ] `TO`
* [ ] `IS`
</quiz>

<quiz>
O alias com `AS`:

* [ ] Altera permanentemente o nome da coluna na tabela.
* [x] Altera apenas o nome exibido no resultado da consulta.
* [ ] Cria uma nova coluna física na tabela.
* [ ] Exclui a coluna original.
</quiz>

<quiz>
Para ordenar do menor para o maior, usamos:

* [x] `ORDER BY coluna ASC`
* [ ] `ORDER BY coluna DESC`
* [ ] `SORT BY coluna`
* [ ] `GROUP BY coluna`
</quiz>

<quiz>
Para ordenar do maior para o menor, usamos:

* [ ] `ORDER BY coluna ASC`
* [x] `ORDER BY coluna DESC`
* [ ] `ORDER coluna REVERSE`
* [ ] `DESC BY coluna`
</quiz>

<quiz>
Na consulta abaixo, a coluna exibida no resultado será:

`SELECT nome AS cliente FROM clientes;`

* [ ] `nome_cliente`
* [ ] `nome`
* [x] `cliente`
* [ ] `clientes`
</quiz>

<quiz>
Qual cláusula deve aparecer por último nesta consulta simples?

* [ ] `FROM`
* [ ] `SELECT`
* [x] `ORDER BY`
* [ ] `AS`
</quiz>

<!-- mkdocs-quiz results -->
