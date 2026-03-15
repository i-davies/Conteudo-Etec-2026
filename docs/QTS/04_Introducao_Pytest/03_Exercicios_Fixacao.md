# Exercícios de Fixação: Introdução ao Pytest

## Exercícios

??? example "Desafio 1: primeiro teste"
    Crie a pasta `QTS/04_aula/introducao_pytest`.

    Monte os arquivos:

    - `calculadora.py`
    - `test_exemplo.py`

    Requisitos:

    - criar a função `somar(a, b)`;
    - criar um teste que valide `somar(4, 6) == 10`;
    - executar com `uv run pytest`.

??? example "Desafio 2: teste para subtração"
    No mesmo projeto, crie a função `subtrair(a, b)`.

    Depois:

    - criar um novo teste para `subtrair(9, 4)`;
    - verificar se o resultado esperado está correto;
    - executar novamente todos os testes.

??? example "Desafio 3: teste que falha de propósito"
    Crie um teste com expectativa errada para observar o relatório do `pytest`.

    Depois:

    - identificar se o problema está no teste ou na função;
    - corrigir o arquivo;
    - rodar novamente até todos os testes passarem.

??? example "Desafio 4: explicação curta"
    Responda com suas palavras:

    - Qual a vantagem de automatizar testes em vez de verificar tudo manualmente?
    - O que o nome `test_` ajuda o `pytest` a fazer?

---

## Checklist

- [ ] Instalei ou sincronizei o `pytest`.
- [ ] Criei meu primeiro arquivo `test_exemplo.py`.
- [ ] Usei `assert` em pelo menos dois testes.
- [ ] Observei um teste falhar e depois corrigi.
