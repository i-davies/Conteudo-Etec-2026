-- ============================================================
-- Gabarito: Exercicios de Fixacao - SELECT, AS e ORDER BY
-- Banco: loja_consultas
-- ============================================================

CREATE DATABASE IF NOT EXISTS loja_consultas;
USE loja_consultas;

DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos (
    id_produto   INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(120) NOT NULL,
    categoria    VARCHAR(60)  NOT NULL,
    preco        DECIMAL(10,2) NOT NULL,
    estoque      INT NOT NULL
);

INSERT INTO produtos (nome_produto, categoria, preco, estoque)
VALUES
    ('Teclado Mecanico',          'Informatica',  349.90, 15),
    ('Mouse sem Fio',             'Informatica',  129.90, 30),
    ('Monitor 24 polegadas',      'Informatica', 1299.00,  8),
    ('Cadeira Gamer',             'Moveis',       899.50, 12),
    ('Mesa de Escritorio',        'Moveis',       450.00,  6),
    ('Luminaria de Mesa',         'Moveis',        89.90, 20),
    ('SQL para Iniciantes',       'Livros',        59.90, 25),
    ('Clean Code',                'Livros',        79.90, 18),
    ('Algoritmos Descomplicados', 'Livros',        69.00, 10),
    ('Caneta Esferofica cx 50',   'Papelaria',     34.90, 40),
    ('Caderno Universitario 200', 'Papelaria',     27.50, 35),
    ('Marcador Permanente',       'Papelaria',     15.80, 50);

-- ============================================================
-- Consultas Basicas
-- ============================================================

-- Ex 1. Todas as colunas da tabela produtos
SELECT * FROM produtos;

-- Ex 2. Apenas nome_produto, categoria e preco
SELECT nome_produto, categoria, preco
FROM produtos;

-- Ex 3. Alias: nome_produto como "produto", preco como "valor"
SELECT
    nome_produto AS produto,
    preco        AS valor
FROM produtos;

-- ============================================================
-- Ordenacao de Resultados
-- ============================================================

-- Ex 4. Preco em ordem crescente (ASC)
SELECT nome_produto, preco
FROM produtos
ORDER BY preco ASC;

-- Ex 5. Preco em ordem decrescente (DESC)
SELECT nome_produto, preco
FROM produtos
ORDER BY preco DESC;

-- Ex 6. Categoria A-Z; dentro de cada categoria, preco maior para menor
SELECT categoria, nome_produto, preco
FROM produtos
ORDER BY categoria ASC, preco DESC;

-- ============================================================
-- Interpretacao de Relatorio (respostas textuais)
-- ============================================================

-- Ex 7.
-- SELECT * retorna todas as colunas, inclusive as que nao sao necessarias.
-- Selecionar colunas especificas deixa o resultado mais legivel, reduz
-- trafego de dados e evita expor campos sensiveis acidentalmente.

-- Ex 8.
-- O alias com AS substitui o nome tecnico da coluna por um termo mais claro
-- no resultado, facilitando a leitura em relatorios e integracao com sistemas.
