# Quiz de Revisão: Filtros Avançados no `WHERE`

Revise os operadores lógicos e os filtros por faixa e lista de valores.

---

<quiz>
No operador `AND`, a linha é retornada quando:

* [ ] Pelo menos uma condição é verdadeira.
* [x] Todas as condições são verdadeiras.
* [ ] Nenhuma condição é verdadeira.
* [ ] A primeira condição é falsa.
</quiz>

<quiz>
No operador `OR`, a linha é retornada quando:

* [x] Pelo menos uma condição é verdadeira.
* [ ] Todas as condições são falsas.
* [ ] Somente duas condições são verdadeiras.
* [ ] A condição final é verdadeira.
</quiz>

<quiz>
O operador `NOT`:

* [ ] Duplica as condições do `WHERE`.
* [x] Inverte o resultado lógico da condição.
* [ ] Ordena os resultados em ordem contrária.
* [ ] Remove valores nulos automaticamente.
</quiz>

<quiz>
`BETWEEN 10 AND 20` retorna valores:

* [ ] Maiores que 10 e menores que 20, sem incluir limites.
* [x] Entre 10 e 20, incluindo 10 e 20.
* [ ] Apenas iguais a 10 ou 20.
* [ ] Menores que 10 e maiores que 20.
</quiz>

<quiz>
A cláusula `IN ('A', 'B', 'C')` é útil para:

* [ ] Substituir `ORDER BY`.
* [x] Comparar uma coluna com vários valores possíveis.
* [ ] Converter texto em número.
* [ ] Criar índice automaticamente.
</quiz>

<quiz>
Qual consulta está mais adequada para categorias `Livros` e `Papelaria`?

* [ ] `WHERE categoria = 'Livros' AND 'Papelaria'`
* [ ] `WHERE categoria BETWEEN 'Livros' AND 'Papelaria'`
* [x] `WHERE categoria IN ('Livros', 'Papelaria')`
* [ ] `WHERE categoria NOT ('Livros', 'Papelaria')`
</quiz>

<quiz>
Sem parênteses, em geral o SQL prioriza:

* [ ] `OR` antes de `AND`
* [x] `AND` antes de `OR`
* [ ] `NOT` depois de `ORDER BY`
* [ ] `BETWEEN` antes de `FROM`
</quiz>

<quiz>
Para evitar ambiguidades em filtros complexos, recomenda-se:

* [ ] Evitar `WHERE` e filtrar na aplicação.
* [ ] Usar apenas `OR`.
* [ ] Trocar `AND` por `IN` em qualquer situação.
* [x] Agrupar condições com parênteses.
</quiz>

<!-- mkdocs-quiz results -->
