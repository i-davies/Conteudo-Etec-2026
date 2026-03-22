# Atividade Avaliativa em Sala

> Esta atividade vale nota e deve ser feita em sala de aula.

---

## Tema da Atividade

Criação de banco de dados com tabelas, chave primária e constraints básicas.

---

## Objetivo

Criar uma estrutura de banco de dados simples, aplicando os conceitos estudados até esta etapa.

Você pode modelar via:

- script SQL direto, ou
- interface (HeidiSQL), desde que entregue o script SQL final.

---

## Cenário

Sistema de trilhas da escola para registrar usuários e desafios.

Você deve criar o banco `lab_escola` com no mínimo as tabelas:

- `usuarios`
- `trilhas`
- `desafios`

### Estrutura obrigatória das tabelas

**Tabela `usuarios`**

- id_usuario
- nome
- email
- data_cadastro

**Tabela `trilhas`**

- id_trilha
- nome
- descricao
- nivel

**Tabela `desafios`**

- id_desafio
- titulo
- descricao
- pontos

> Você deve definir os tipos de dados e decidir quais campos terão `PRIMARY KEY`, `AUTO_INCREMENT`, `NOT NULL`, `UNIQUE` e `DEFAULT`.

---

## Requisitos obrigatórios

1. Criar o banco com `CREATE DATABASE` e selecionar com `USE`.
2. Criar as 3 tabelas com os campos mínimos informados no cenário.
3. Definir os tipos de dados e constraints de forma coerente com a modelagem proposta.
4. Usar pelo menos:
    - 2 campos `NOT NULL` no total,
    - 1 campo `UNIQUE` no total,
    - 1 campo com `DEFAULT` no total.
5. Entregar o script SQL em arquivo `.sql`.

---

## Entrega

- Arquivo nomeado como `AT1_BD2_2B_T1_nome_sobrenome.sql`.
- Captura de tela da estrutura final das tabelas no HeidiSQL.
---

## Critérios de Correção

- 4,0 pts: criação correta do banco e das tabelas.
- 3,0 pts: uso correto de constraints (`NOT NULL`, `UNIQUE`, `DEFAULT` e `PRIMARY KEY`).
- 2,0 pts: organização e legibilidade do script SQL.
- 1,0 pt: validação final (estrutura confere com o solicitado).

---

## Observação

Mesmo que a criação seja feita pela interface gráfica, a entrega oficial será o **script SQL** gerado/exportado.
