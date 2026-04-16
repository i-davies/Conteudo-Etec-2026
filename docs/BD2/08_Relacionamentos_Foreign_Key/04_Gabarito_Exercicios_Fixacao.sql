CREATE DATABASE IF NOT EXISTS biblioteca_relacional;
USE biblioteca_relacional;

DROP TABLE IF EXISTS livros;
DROP TABLE IF EXISTS editoras;

CREATE TABLE editoras (
    id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome_editora VARCHAR(100) NOT NULL
);

CREATE TABLE livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    id_editora INT NOT NULL,
    CONSTRAINT fk_livros_editoras
        FOREIGN KEY (id_editora)
        REFERENCES editoras(id_editora)
);

INSERT INTO editoras (nome_editora)
VALUES
    ('Novatec'),
    ('Casa do Codigo');

INSERT INTO livros (titulo, id_editora)
VALUES
    ('SQL para Iniciantes', 1),
    ('Modelagem de Dados Pratica', 2);

-- Deve falhar: id_editora 999 nao existe na tabela editoras
INSERT INTO livros (titulo, id_editora)
VALUES ('Livro Sem Editora Valida', 999);

DROP TABLE IF EXISTS livros;

CREATE TABLE livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    id_editora INT NOT NULL,
    CONSTRAINT fk_livros_editoras
        FOREIGN KEY (id_editora)
        REFERENCES editoras(id_editora)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

INSERT INTO livros (titulo, id_editora)
VALUES
    ('Banco de Dados Relacional', 1),
    ('Integridade Referencial na Pratica', 2);

-- Deve falhar: a editora 1 possui livros vinculados
DELETE FROM editoras
WHERE id_editora = 1;

DROP TABLE IF EXISTS livros;

CREATE TABLE livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    id_editora INT NOT NULL,
    CONSTRAINT fk_livros_editoras
        FOREIGN KEY (id_editora)
        REFERENCES editoras(id_editora)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO livros (titulo, id_editora)
VALUES
    ('Livro de Teste Cascade 1', 1),
    ('Livro de Teste Cascade 2', 2);

DELETE FROM editoras
WHERE id_editora = 1;

SELECT * FROM editoras;
SELECT * FROM livros;
