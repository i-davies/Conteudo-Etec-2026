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
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- INSERTS (carga inicial)
INSERT INTO editoras (nome_editora)
VALUES
    ('Novatec'),
    ('Casa do Codigo'),
    ('Alta Books');

INSERT INTO livros (titulo, id_editora)
VALUES
    ('SQL para Iniciantes', 1),
    ('Modelagem de Dados na Pratica', 1),
    ('Banco de Dados para Web', 2),
    ('Guia de Integridade Referencial', 3);

-- UPDATE (atualizacao de dados)
UPDATE editoras
SET nome_editora = 'Casa do Codigo LTDA'
WHERE id_editora = 2;

UPDATE livros
SET titulo = 'SQL para Iniciantes - Edicao Revisada'
WHERE id_livro = 1;

-- DELETE (remocao de dados)
DELETE FROM livros
WHERE id_livro = 4;

-- Teste de integridade: deve falhar por ON DELETE RESTRICT
DELETE FROM editoras
WHERE id_editora = 1;

-- Conferencia final
SELECT * FROM editoras;
SELECT * FROM livros;
