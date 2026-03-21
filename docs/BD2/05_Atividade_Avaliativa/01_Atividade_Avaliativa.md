# Atividade Avaliativa em Sala

> Esta atividade vale nota e deve ser feita em sala de aula.

---

## Tema da Atividade

Criação de banco de dados com tabelas, chave primária e constraints básicas.

---

## Objetivo

Criar uma estrutura de banco de dados simples, porém correta, aplicando os conceitos estudados até esta etapa.

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

---

## Requisitos obrigatórios

1. Criar o banco com `CREATE DATABASE` e selecionar com `USE`.
2. Criar as 3 tabelas com tipos de dados adequados.
3. Cada tabela deve possuir `PRIMARY KEY`.
4. Usar pelo menos:
- 2 campos `NOT NULL` no total,
- 1 campo `UNIQUE` no total,
- 1 campo com `DEFAULT` no total.
5. Entregar o script SQL em arquivo `.sql`.

---

## Requisitos opcionais (bônus)

- Criar relacionamento com `FOREIGN KEY` (por exemplo, `desafios` ligados a `trilhas`).
- Inserir alguns registros de teste para validar a estrutura.

---

## Modelo Base Sugerido (pode adaptar)

### Tabela `usuarios`
- `id_usuario` INT (PK, auto-incremento)
- `nome` VARCHAR(100) NOT NULL
- `email` VARCHAR(120) UNIQUE
- `perfil` VARCHAR(20) DEFAULT 'aluno'

### Tabela `trilhas`
- `id_trilha` INT (PK, auto-incremento)
- `nome_trilha` VARCHAR(80) NOT NULL
- `descricao` VARCHAR(200)

### Tabela `desafios`
- `id_desafio` INT (PK, auto-incremento)
- `titulo` VARCHAR(100) NOT NULL
- `nivel` VARCHAR(20) DEFAULT 'basico'
- `id_trilha` INT (FK opcional)

---

## Entrega

Enviar:

- script `atividade_bd2_nome_sobrenome.sql`;
- captura da estrutura final das tabelas no HeidiSQL (ou equivalente);

---

## Critérios de Correção

- 4,0 pts: criação correta do banco e das tabelas.
- 3,0 pts: uso correto de constraints (`NOT NULL`, `UNIQUE`, `DEFAULT`, `PRIMARY KEY`).
- 2,0 pts: organização e legibilidade do script SQL.
- 1,0 pt: validação final (estrutura confere com o solicitado).

Bônus até +1,0:
- uso correto de `FOREIGN KEY`.

---

## Observação Importante

Mesmo que a criação seja feita pela interface gráfica, a entrega oficial será o **script SQL** gerado/exportado.
Isso aproxima a atividade do formato da prova prática.

---

## Checklist de Entrega

- [ ] Banco criado com `CREATE DATABASE` e `USE`.
- [ ] Três tabelas criadas com tipos corretos.
- [ ] Chave primária aplicada em todas as tabelas.
- [ ] Uso de `NOT NULL`, `UNIQUE` e `DEFAULT`.
- [ ] Arquivo `.sql` entregue com nome correto.
