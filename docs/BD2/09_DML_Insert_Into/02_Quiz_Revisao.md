# Quiz de Revisão: DML e `INSERT INTO`

Revise os conceitos de carga inicial de dados e relacionamento com chave estrangeira.

---

<quiz>
`DML` é a linguagem usada para:

* [ ] Definir tema visual do banco.
* [x] Manipular dados nas tabelas.
* [ ] Configurar permissões de servidor.
* [ ] Criar arquivos de backup automaticamente.
</quiz>

<quiz>
O comando mais usado para carga inicial de dados é:

* [ ] `CREATE TABLE`
* [ ] `ALTER TABLE`
* [x] `INSERT INTO`
* [ ] `DROP DATABASE`
</quiz>

<quiz>
Ao escrever um `INSERT INTO`, uma boa prática é:

* [ ] Omitir os nomes das colunas sempre.
* [x] Informar explicitamente as colunas no comando.
* [ ] Inserir sem `VALUES`.
* [ ] Usar apenas uma coluna por tabela.
</quiz>

<quiz>
Qual alternativa representa inserção múltipla correta?

* [ ] `INSERT editoras VALUES ('A') ('B');`
* [x] `INSERT INTO editoras (nome_editora) VALUES ('A'), ('B');`
* [ ] `CREATE editoras VALUES ('A'), ('B');`
* [ ] `UPDATE editoras SET nome_editora = ('A'), ('B');`
</quiz>

<quiz>
Na tabela `livros`, o campo `id_editora` é:

* [ ] Uma chave primária.
* [ ] Um campo opcional sem regra.
* [x] Uma chave estrangeira que referencia `editoras`.
* [ ] Um campo calculado automaticamente pelo `SELECT`.
</quiz>

<quiz>
Se tentar inserir um livro com `id_editora` inexistente, o MySQL deve:

* [ ] Inserir e criar a editora faltante.
* [ ] Substituir pelo último `id_editora` válido.
* [x] Retornar erro de integridade referencial.
* [ ] Ignorar a coluna e salvar o restante.
</quiz>


<!-- mkdocs-quiz results -->
