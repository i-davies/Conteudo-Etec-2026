# Introdução ao Pytest

Nesta unidade, vamos usar Python para automatizar verificações simples com `pytest`, uma ferramenta muito usada para testes.

---

## Objetivos da unidade

- Entender o que é o `pytest`.
- Instalar o `pytest` em um projeto Python.
- Criar o primeiro arquivo `test_exemplo.py`.
- Executar testes e interpretar resultado de aprovado ou reprovado.

---

## O que é o pytest?

`pytest` é uma biblioteca que ajuda a testar funções e comportamentos do código.

Com ele, podemos:

- escrever testes pequenos;
- executar todos de uma vez;
- descobrir rapidamente se algo quebrou;
- ter mais confiança ao alterar o código.

---

## Estrutura inicial

Vamos imaginar um projeto simples:

```text
QTS/04_aula/introducao_pytest/
  calculadora.py
  test_exemplo.py
```

No arquivo `calculadora.py`:

```python
def somar(a, b):
    return a + b
```

No arquivo `test_exemplo.py`:

```python
from calculadora import somar


def test_somar_dois_numeros():
    assert somar(2, 3) == 5
```

---

## Instalando o pytest

Se estiver usando o ambiente da disciplina com UV, um caminho simples é:

```bash
uv add pytest
```

Para executar os testes:

```bash
uv run pytest
```

Se o projeto já tiver o `pytest` instalado, basta rodar o comando de execução.

??? tip "Leitura prática"
    O `assert` compara o resultado esperado com o resultado real. Se forem diferentes, o teste falha.

---

## Como o pytest encontra os testes

O `pytest` procura arquivos e funções com padrões conhecidos, como:

- arquivos iniciando com `test_`;
- funções iniciando com `test_`.

Por isso, `test_exemplo.py` e `test_somar_dois_numeros()` seguem esse padrão.

---

## Exemplo com falha de teste

Veja este teste:

```python
from calculadora import somar


def test_somar_valores():
    assert somar(2, 2) == 5
```

O código da função pode estar correto, mas a expectativa do teste está errada.

Nesse caso:

- o teste falha;
- o `pytest` mostra o valor esperado e o valor obtido;
- o aluno precisa investigar se o problema está no teste ou na função.

---

## Prática orientada

??? example "Prática: primeiro teste automatizado"
    Crie a pasta:

    - `QTS/04_aula/introducao_pytest`

    Crie os arquivos:

    - `calculadora.py`
    - `test_exemplo.py`

    Requisitos:

    - `calculadora.py` deve ter a função `somar(a, b)`;
    - `test_exemplo.py` deve importar a função;
    - criar ao menos um teste com `assert`;
    - executar com `uv run pytest`.

---

## Fechamento

- `pytest` automatiza verificações simples.
- Testes ajudam a detectar defeitos com mais rapidez.
- Um bom teste tem nome claro e compara resultado esperado com resultado real.
