# Gabarito - Atividade BD2

> Este gabarito apresenta uma solução possível para a atividade avaliativa, servindo como base de revisão para a prova. Como o enunciado permite liberdade de modelagem, outras estruturas também podem estar corretas, desde que atendam aos requisitos obrigatórios.

---

## Objetivos desta Revisão

Ao revisar este gabarito, você deve:

1. Entender a estrutura de cada tabela e suas constraints.
2. Reconhecer os padrões de nomeação (id_, tabelas no singular/plural).
3. Identificar cada constraint e sua finalidade.
4. Saber recriar essa estrutura do zero na prova.

---

## Script SQL Completo

```sql
CREATE DATABASE lab_escola;
USE lab_escola;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    data_cadastro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE trilhas (
    id_trilha INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    nivel VARCHAR(30) DEFAULT 'Iniciante'
);

CREATE TABLE desafios (
    id_desafio INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT,
    pontos INT DEFAULT 0
);
```

---

## Requisitos Obrigatórios Atendidos

- Banco criado com `CREATE DATABASE` e selecionado com `USE`
- Três tabelas criadas: `usuarios`, `trilhas` e `desafios`
- Cada tabela com `PRIMARY KEY` e `AUTO_INCREMENT`
- Constraints aplicadas:
  - `NOT NULL` em campos obrigatórios (nome, email, titulo)
  - `UNIQUE` em `usuarios.email`
  - `DEFAULT` em `usuarios.data_cadastro`, `trilhas.nivel` e `desafios.pontos`

---

## Explicação de Cada Constraint Utilizado

### Tabela `usuarios`

```sql
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    data_cadastro DATE DEFAULT CURRENT_DATE
);
```

- `id_usuario INT PRIMARY KEY AUTO_INCREMENT`: Identificador único, incrementado automaticamente.
- `nome VARCHAR(100) NOT NULL`: Campo obrigatório.
- `email VARCHAR(150) NOT NULL UNIQUE`: Obrigatório e sem duplicatas.
- `data_cadastro DATE DEFAULT CURRENT_DATE`: Preenche automaticamente com a data do sistema.

### Tabela `trilhas`

```sql
CREATE TABLE trilhas (
    id_trilha INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    nivel VARCHAR(30) DEFAULT 'Iniciante'
);
```

- `id_trilha INT PRIMARY KEY AUTO_INCREMENT`: Identificador único.
- `nome VARCHAR(100) NOT NULL`: Nome obrigatório.
- `descricao TEXT`: Campo opcional para mais detalhes.
- `nivel VARCHAR(30) DEFAULT 'Iniciante'`: Valor padrão quando não informado.

### Tabela `desafios`

```sql
CREATE TABLE desafios (
    id_desafio INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT,
    pontos INT DEFAULT 0
);
```

- `id_desafio INT PRIMARY KEY AUTO_INCREMENT`: Identificador único.
- `titulo VARCHAR(150) NOT NULL`: Título obrigatório.
- `descricao TEXT`: Campo opcional.
- `pontos INT DEFAULT 0`: Começa com 0 pontos se não definido.

---

## Pontos Importantes para a Prova

1. **CREATE DATABASE**: Cria um novo banco.
2. **USE**: Seleciona o banco ativo.
3. **CREATE TABLE**: Define a estrutura de cada tabela.
4. **PRIMARY KEY**: Identificador único (geralmente `id_nomeDaTabela`).
5. **AUTO_INCREMENT**: Gera IDs automaticamente.
6. **NOT NULL**: Campo obrigatório.
7. **UNIQUE**: Evita duplicatas.
8. **DEFAULT**: Valor padrão automático.
9. **VARCHAR vs TEXT**: VARCHAR para textos curtos, TEXT para textos longos.

## Próximo Passo

Pratique recriando essa estrutura do zero e inserindo dados variados. Tenha certeza de entender **por que** cada constraint foi utilizado!
