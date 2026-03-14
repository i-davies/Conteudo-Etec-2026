# Constraints II no MySQL

> Nesta unidade vamos aprofundar a **chave primária (`PRIMARY KEY`)**, que identifica cada registro de forma única.

---

## Objetivos da Aula

Ao final desta sequência, você será capaz de:

1. Criar tabelas com `PRIMARY KEY`.
2. Diferenciar `PRIMARY KEY` e `UNIQUE`.
3. Adicionar chave primária com `ALTER TABLE`.
4. Entender quando existe uma chave composta.

---

## O que é Chave Primária

A chave primária é o identificador principal da tabela.

Ela possui três características:

- não pode repetir valor;
- não pode ser nula;
- representa a identidade de cada registro.

---

## Criando `PRIMARY KEY` na tabela

```sql
CREATE TABLE turmas (
    id_turma INT AUTO_INCREMENT,
    nome_turma VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_turma)
);
```

Forma curta equivalente:

```sql
CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(60) NOT NULL
);
```

---

## Diferença entre `PRIMARY KEY` e `UNIQUE`

- `PRIMARY KEY`: identifica oficialmente cada linha da tabela.
- `UNIQUE`: também evita repetição, mas é usado em colunas complementares.

Exemplo comum:

- `id_usuario` como chave primária;
- `email` como campo único.

---

## Ajuste em tabela já existente

Se a tabela foi criada sem chave primária:

```sql
ALTER TABLE alunos
ADD PRIMARY KEY (id_aluno);
```

Antes disso, a coluna escolhida não pode ter valores duplicados ou nulos.

---

## Introdução à Chave Composta

Quando duas colunas juntas identificam o registro, usamos chave composta.

```sql
CREATE TABLE matriculas (
    id_aluno INT,
    id_turma INT,
    data_matricula DATE,
    PRIMARY KEY (id_aluno, id_turma)
);
```

Para o momento atual da turma, o foco principal é chave primária simples com `AUTO_INCREMENT`.

---

## Fechamento

Dominar `PRIMARY KEY` é essencial para garantir organização dos dados e preparar as próximas etapas de relacionamento com chave estrangeira.
