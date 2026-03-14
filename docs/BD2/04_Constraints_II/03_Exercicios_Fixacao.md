# Exercícios de Fixação: Constraints II (PRIMARY KEY)

> Pratique a criação e ajuste de chave primária em tabelas reais de treino.

---

## Contexto

Você foi contratado para estruturar um sistema simples de trilhas e desafios da escola.

Crie o banco `trilhas_escola` e resolva as etapas abaixo.

---

## Parte 1 — Criação com chave primária

1. Crie a tabela `trilhas` com:
- `id_trilha` (INT, auto incremento, PK)
- `nome_trilha` (VARCHAR(80), obrigatório)
- `nivel` (VARCHAR(20), padrão `'iniciante'`)

2. Crie a tabela `desafios` com:
- `id_desafio` (INT, auto incremento, PK)
- `titulo` (VARCHAR(100), obrigatório)
- `pontuacao` (INT, padrão 10)

---

## Parte 2 — Ajuste com ALTER

3. Crie uma tabela `usuarios` inicialmente sem PK:
- `id_usuario` INT
- `nome` VARCHAR(100)
- `email` VARCHAR(120)

4. Depois adicione a PK via `ALTER TABLE` em `id_usuario`.

5. Torne `id_usuario` auto incremento (se necessário, ajuste a estrutura).

---

## Parte 3 — Verificação

6. Execute `DESCRIBE` nas três tabelas.
7. Explique em 2 linhas por que a tabela `usuarios` era arriscada sem PK.

---

## Checklist de Entrega

- [ ] Script SQL completo e organizado em blocos comentados.
- [ ] Evidência de estrutura final das tabelas.
- [ ] Resposta curta sobre a importância da PK.

??? tip "Dica para conferência"
    Use `DESCRIBE nome_tabela;` em cada tabela para confirmar se a chave primária foi aplicada corretamente.
