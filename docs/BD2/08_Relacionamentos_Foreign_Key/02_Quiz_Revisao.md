# Quiz de Revisão: Relacionamentos e `FOREIGN KEY`

Revise os principais conceitos de chave estrangeira e integridade referencial.

---

<quiz>
A `FOREIGN KEY` é usada para:

* [ ] Definir o tamanho de uma coluna `VARCHAR`.
* [x] Relacionar tabelas e garantir referência válida.
* [ ] Substituir a chave primária da tabela pai.
* [ ] Criar valores padrão automaticamente.
</quiz>

<quiz>
Qual afirmação está correta sobre integridade referencial?

* [ ] Permite qualquer valor na coluna relacionada.
* [ ] Só funciona em tabelas sem `PRIMARY KEY`.
* [x] Impede referências para registros inexistentes na tabela pai.
* [ ] É aplicada apenas em bancos NoSQL.
</quiz>

<quiz>
Em uma relação entre `cursos` e `alunos`, a tabela filha normalmente é:

* [ ] `cursos`, por ter menos colunas.
* [x] `alunos`, por conter a `FOREIGN KEY`.
* [ ] A tabela que foi criada primeiro.
* [ ] A tabela com mais registros.
</quiz>

<quiz>
Qual sintaxe representa corretamente uma chave estrangeira?

* [ ] `PRIMARY (id_curso) REFERENCES cursos(id_curso)`
* [ ] `UNIQUE KEY id_curso FROM cursos`
* [x] `FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)`
* [ ] `LINK KEY id_curso TO cursos`
</quiz>

<quiz>
Se tentar inserir em `alunos` um `id_curso` inexistente, o MySQL deve:

* [ ] Ajustar automaticamente para o último curso criado.
* [ ] Inserir normalmente e avisar depois.
* [x] Retornar erro de integridade referencial.
* [ ] Apagar o registro da tabela pai.
</quiz>

<quiz>
O que faz `ON DELETE CASCADE`?

* [ ] Impede toda exclusão na tabela pai.
* [x] Remove automaticamente registros filhos relacionados.
* [ ] Atualiza somente campos `VARCHAR`.
* [ ] Cria um backup antes de excluir.
</quiz>

<quiz>
O que faz `ON DELETE RESTRICT`?

* [ ] Exclui pai e filho em cascata.
* [ ] Define `NULL` na tabela filha.
* [x] Bloqueia a exclusão do pai quando há filhos relacionados.
* [ ] Converte a chave estrangeira em `PRIMARY KEY`.
</quiz>

<quiz>
Para criar relacionamento corretamente, a coluna referenciada na tabela pai deve ser, em geral:

* [ ] Uma coluna opcional sem índice.
* [ ] Uma coluna de texto aleatório.
* [x] Chave primária (ou coluna única) compatível.
* [ ] Um campo calculado em tempo de consulta.
</quiz>

<!-- mkdocs-quiz results -->
