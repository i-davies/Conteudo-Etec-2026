# Relacionamentos no MySQL: `FOREIGN KEY` e Integridade Referencial

> Nesta unidade, vamos conectar tabelas usando chave estrangeira para garantir consistência entre os dados.

---

## Objetivos da Aula

Ao final desta sequência, você será capaz de:

1. Entender o papel da chave estrangeira em bancos relacionais.
2. Criar tabelas relacionadas com `FOREIGN KEY`.
3. Interpretar erros de integridade referencial em inserções e exclusões.
4. Aplicar regras básicas de `ON DELETE` e `ON UPDATE`.

---

## O que é Relacionamento entre Tabelas

Em um banco relacional, os dados ficam separados em tabelas para evitar repetição.

Para ligar essas tabelas, usamos:

- `PRIMARY KEY` na tabela principal (pai);
- `FOREIGN KEY` na tabela relacionada (filha).

A `FOREIGN KEY` garante que um registro da tabela filha só aponte para um registro que exista na tabela pai.

---

## Estrutura Básica de `FOREIGN KEY`

```sql
CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(80) NOT NULL
);

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    id_curso INT,
    CONSTRAINT fk_alunos_cursos
        FOREIGN KEY (id_curso)
        REFERENCES cursos(id_curso)
);
```

No exemplo:

- `cursos` é a tabela pai;
- `alunos` é a tabela filha;
- `id_curso` em `alunos` deve existir em `cursos`.

---

## Testando a Integridade Referencial

```sql
CREATE DATABASE IF NOT EXISTS escola_relacionamentos;
USE escola_relacionamentos;

CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(80) NOT NULL
);

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    id_curso INT,
    CONSTRAINT fk_alunos_cursos
        FOREIGN KEY (id_curso)
        REFERENCES cursos(id_curso)
);

```

A segunda inserção falha porque viola a integridade referencial.

---

## Regras `ON DELETE` e `ON UPDATE`

Podemos definir o comportamento quando o registro da tabela pai é alterado ou removido.

Exemplo com `CASCADE`:

```sql
CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_curso INT NOT NULL,
    CONSTRAINT fk_matriculas_alunos
        FOREIGN KEY (id_aluno)
        REFERENCES alunos(id_aluno)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_matriculas_cursos
        FOREIGN KEY (id_curso)
        REFERENCES cursos(id_curso)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);
```

Com `ON DELETE CASCADE`, ao excluir um aluno, as matrículas ligadas a ele também são removidas.

Com `ON DELETE RESTRICT`, o banco impede excluir um curso que ainda esteja sendo usado em matrículas.

??? tip "Dica"
    Sempre teste um caso válido e um caso inválido para comprovar se sua chave estrangeira foi configurada corretamente.

---

## Fechamento

A `FOREIGN KEY` é a base dos relacionamentos no modelo relacional. Com ela, você protege a consistência dos dados e evita registros "soltos" no banco.
