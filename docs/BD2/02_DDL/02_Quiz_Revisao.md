# Quiz de Revisão: DDL

Teste seus conhecimentos sobre os comandos de **DDL (Data Definition Language / Linguagem de Definição de Dados)** estudados nesta unidade.

---

<quiz>
Qual comando cria um banco de dados no MySQL?

* [ ] `INSERT DATABASE escola;`
* [x] `CREATE DATABASE escola;`
* [ ] `NEW DATABASE escola;`
* [ ] `MAKE DATABASE escola;`
</quiz>

<quiz>
Qual comando seleciona o banco para uso após criá-lo?

* [ ] `OPEN escola;`
* [ ] `CONNECT escola;`
* [x] `USE escola;`
* [ ] `SELECT DATABASE escola;`
</quiz>

<quiz>
Em uma tabela, qual tipo de dado é mais indicado para armazenar um nome com até 100 caracteres?

* [ ] `INT`
* [ ] `DATE`
* [x] `VARCHAR(100)`
* [ ] `BOOLEAN`
</quiz>

<quiz>
Qual comando adiciona uma nova coluna em uma tabela existente?

* [ ] `CREATE COLUMN`
* [x] `ALTER TABLE ... ADD`
* [ ] `UPDATE TABLE ... NEW COLUMN`
* [ ] `MODIFY TABLE ... INSERT COLUMN`
</quiz>

<quiz>
Qual comando remove uma tabela inteira (estrutura e dados)?

* [ ] `DELETE TABLE`
* [ ] `REMOVE TABLE`
* [x] `DROP TABLE`
* [ ] `TRUNCATE TABLE`
</quiz>

<quiz>
Qual alternativa reduz risco de erro ao excluir uma tabela que pode não existir?

* [ ] `DROP SAFE TABLE alunos;`
* [ ] `REMOVE TABLE IF PRESENT alunos;`
* [x] `DROP TABLE IF EXISTS alunos;`
* [ ] `DELETE TABLE IF EXISTS alunos;`
</quiz>

<quiz>
O comando `ALTER TABLE` serve principalmente para:

* [ ] Inserir registros na tabela.
* [ ] Consultar dados com filtros.
* [x] Modificar a estrutura de uma tabela existente.
* [ ] Criar usuários no banco.
</quiz>

<quiz>
O que `AUTO_INCREMENT` faz em uma coluna `INT` de chave primária?

* [ ] Impede valores duplicados em qualquer coluna.
* [ ] Converte texto em número automaticamente.
* [x] Gera automaticamente o próximo número a cada novo registro.
* [ ] Apaga registros duplicados.
</quiz>


<!-- mkdocs-quiz results -->
