# Exercícios de Fixação: Constraints I

> Pratique `NOT NULL`, `UNIQUE` e `DEFAULT` em um cenário de cadastro escolar.

---

## Contexto

Você foi contratado para montar a tabela de usuários de um portal acadêmico.

Crie o banco `portal_escola` e resolva as etapas abaixo usando SQL.

---

## Parte 1 — Criação da estrutura

1. Crie o banco de dados e selecione para uso.
2. Crie a tabela `usuarios` com os campos:

- `id_usuario` (INT, auto incremento, chave primária)
- `nome` (VARCHAR(100), obrigatório)
- `email` (VARCHAR(120), único)
- `perfil` (VARCHAR(20), padrão `'aluno'`)
- `ativo` (BOOLEAN, padrão `TRUE`)

---

## Parte 2 — Testes de validação

3. Tente inserir um registro sem o campo `nome`.
4. Tente inserir dois registros com o mesmo `email`.
5. Insira um registro sem informar `perfil`.

Após cada teste, registre em 1 frase o que aconteceu.

---

## Parte 3 — Ajuste de estrutura

6. Adicione a coluna `telefone` com `VARCHAR(20)`.
7. Use `DESCRIBE usuarios;` para conferir a estrutura final.

---

## Checklist de Entrega

- [ ] Script SQL com criação da tabela e testes executados.
- [ ] Evidência do erro de `NOT NULL`.
- [ ] Evidência do erro de `UNIQUE`.
- [ ] Evidência do valor `DEFAULT` aplicado.

??? tip "Dica para conferência"
    Teste sempre inserções corretas e incorretas para provar que as constraints estão funcionando.
