# Quiz de Revisão: Constraints I

Teste seus conhecimentos sobre `NOT NULL`, `UNIQUE` e `DEFAULT`.

---

<quiz>
Qual constraint impede que um campo obrigatório seja salvo vazio (nulo)?

* [x] `NOT NULL`
* [ ] `UNIQUE`
* [ ] `DEFAULT`
* [ ] `CHECK`
</quiz>

<quiz>
A constraint `UNIQUE` tem como objetivo principal:

* [ ] Definir valor padrão para todos os registros.
* [ ] Impedir que a tabela seja apagada.
* [x] Evitar valores repetidos em uma coluna.
* [ ] Criar relacionamento entre tabelas.
</quiz>

<quiz>
Se uma coluna possui `DEFAULT 'ativo'`, isso significa que:

* [x] Se o valor não for informado, o banco usa `'ativo'`.
* [ ] O valor só pode ser `'ativo'`.
* [ ] A coluna passa a ser chave primária.
* [ ] A coluna nunca poderá ser alterada.
</quiz>

<quiz>
Qual alternativa representa um bom uso de `UNIQUE`?

* [ ] Nome do aluno.
* [x] E-mail do usuário.
* [ ] Cidade do usuário.
* [ ] Turno da turma.
</quiz>

<quiz>
Sobre `NOT NULL`, assinale a correta:

* [ ] Permite apenas números inteiros.
* [x] Exige preenchimento da coluna em cada registro.
* [ ] Cria índice automaticamente em todos os casos.
* [ ] Remove espaços em branco.
</quiz>

<quiz>
Uma coluna pode ter `NOT NULL` e `DEFAULT` ao mesmo tempo?

* [x] Sim, é comum.
* [ ] Não, são incompatíveis.
* [ ] Só no PostgreSQL.
* [ ] Apenas em colunas numéricas.
</quiz>

<quiz>
Se houver dois valores iguais em uma coluna com `UNIQUE`, o MySQL:

* [ ] Aceita normalmente.
* [x] Retorna erro e impede a gravação.
* [ ] Apaga o registro antigo.
* [ ] Troca automaticamente o valor duplicado.
</quiz>

<quiz>
Qual comando exibe a estrutura de uma tabela para conferir constraints?

* [ ] `SHOW DATA alunos;`
* [x] `DESCRIBE alunos;`
* [ ] `PRINT TABLE alunos;`
* [ ] `LIST alunos;`
</quiz>

<!-- mkdocs-quiz results -->
