# Quiz de Revisão: Constraints II (PRIMARY KEY)

Teste seus conhecimentos sobre chave primária.

---

<quiz>
A `PRIMARY KEY` serve para:

* [ ] Definir o nome da tabela.
* [x] Identificar cada registro de forma única.
* [ ] Permitir valores repetidos.
* [ ] Armazenar textos longos.
</quiz>

<quiz>
Qual característica da `PRIMARY KEY` é verdadeira?

* [ ] Aceita valor nulo.
* [ ] Aceita repetições.
* [x] Não aceita nulo nem repetição.
* [ ] Só funciona com `VARCHAR`.
</quiz>

<quiz>
Qual alternativa cria uma PK simples corretamente?

* [ ] `id INT UNIQUE NULL`
* [ ] `id INT DEFAULT 0`
* [x] `id INT AUTO_INCREMENT PRIMARY KEY`
* [ ] `id INT FOREIGN KEY`
</quiz>

<quiz>
Sobre `UNIQUE` e `PRIMARY KEY`, assinale a correta:

* [ ] São exatamente a mesma coisa.
* [x] `PRIMARY KEY` identifica a linha principal; `UNIQUE` evita duplicidade em outras colunas.
* [ ] `UNIQUE` substitui sempre qualquer PK.
* [ ] `PRIMARY KEY` só existe em banco NoSQL.
</quiz>

<quiz>
Qual comando adiciona chave primária em tabela já criada?

* [ ] `UPDATE TABLE alunos PRIMARY id_aluno;`
* [ ] `CREATE PRIMARY ON alunos(id_aluno);`
* [x] `ALTER TABLE alunos ADD PRIMARY KEY (id_aluno);`
* [ ] `ADD KEY alunos PRIMARY(id_aluno);`
</quiz>

<quiz>
Uma tabela pode ter mais de uma `PRIMARY KEY`?

* [ ] Sim, ilimitadas.
* [ ] Sim, no mínimo duas.
* [x] Não, apenas uma definição de chave primária (simples ou composta).
* [ ] Depende da IDE, não do banco.
</quiz>

<quiz>
Quando usamos PK composta?

* [ ] Quando nenhuma coluna existe.
* [x] Quando duas (ou mais) colunas juntas identificam o registro.
* [ ] Quando queremos permitir duplicidade.
* [ ] Apenas em tabelas com texto.
</quiz>

<quiz>
Em geral, para o nível inicial, a prática mais comum é:

* [x] PK simples com `INT AUTO_INCREMENT`.
* [ ] PK com campo de descrição.
* [ ] Sem PK para facilitar inserts.
* [ ] PK em colunas opcionais.
</quiz>

<!-- mkdocs-quiz results -->
