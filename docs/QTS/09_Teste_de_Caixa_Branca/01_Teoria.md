# Teste de Caixa Branca

Nesta unidade, vamos continuar trabalhando no projeto `fastapi_qts`, reaproveitando a mesma base da aula anterior e evoluindo o código por branches ao longo do bimestre.

---

## Objetivos da unidade

- Entender o conceito de teste de caixa branca.
- Identificar decisões e caminhos lógicos de uma função.
- Criar casos de teste para cobrir todos os ramos.
- Executar testes com `pytest` no padrão da disciplina.
- Organizar o projeto com branch por aula e pasta `tests` separada por domínio.

---

## O que é teste de caixa branca

No teste de caixa branca, analisamos a estrutura interna do código para decidir os cenários.

Em vez de olhar só entrada e saída, observamos também:

- condições de decisão;
- desvios de fluxo;
- casos de borda.

??? tip "Comparação rápida"
    Em caixa preta, você testa comportamento sem olhar implementação.
    Em caixa branca, você usa a implementação para garantir cobertura dos caminhos lógicos.

---

## Estrutura do projeto

Para esta disciplina, vamos organizar o código assim:

```text
fastapi_qts/
    app/
        main.py
        classificacao/
            classificador.py
    tests/
        classificacao/
            test_classificador.py
```

Esse padrão deixa o código de aplicação separado dos testes e ajuda o `pytest` a encontrar tudo de forma automática.

---

## Fluxo com branches

Antes de implementar a atividade desta aula, crie uma nova branch a partir da base principal do projeto:

```bash
git checkout main
git pull
git checkout -b feature/teste-caixa-branca
```

Depois, faça os incrementos da aula dentro dessa branch.

---

## Exemplo de função com decisões

Arquivo `app/classificacao/classificador.py`:

```python
def classificar_nota(nota: float) -> str:
    if nota < 0 or nota > 10:
        return "nota invalida"
    if nota >= 7:
        return "aprovado"
    if nota >= 5:
        return "recuperacao"
    return "reprovado"
```

Essa função tem quatro resultados possíveis. Para cobrir todos os caminhos, precisamos de testes que passem por cada retorno.

---

## Criando testes para todos os ramos

Arquivo `tests/classificacao/test_classificador.py`:

```python
from app.classificacao.classificador import classificar_nota


def test_nota_invalida_abaixo_de_zero():
    assert classificar_nota(-1) == "nota invalida"


def test_nota_invalida_acima_de_dez():
    assert classificar_nota(11) == "nota invalida"


def test_nota_aprovada():
    assert classificar_nota(8) == "aprovado"


def test_nota_em_recuperacao():
    assert classificar_nota(5.5) == "recuperacao"


def test_nota_reprovada():
    assert classificar_nota(3) == "reprovado"
```

Executar testes:

```bash
uv run pytest -v
```

O `pytest` procura automaticamente arquivos com nome `test_` dentro da pasta `tests`.
Por isso, separar os testes por feature, como `tests/classificacao/`, mantém o projeto organizado sem fugir do padrão do `pytest`.

---

## Estratégia prática para montar casos

Para funções com decisão:

1. Liste cada condição do código.
2. Marque os possíveis caminhos de saída.
3. Crie pelo menos um teste para cada caminho.
4. Inclua valores de borda quando fizer sentido.

Exemplo de borda nesta função:

- `nota = 7` deve retornar `aprovado`;
- `nota = 5` deve retornar `recuperacao`;
- `nota = 0` deve retornar `reprovado`.

---

## Resumo da unidade

Você viu como usar teste de caixa branca para garantir cobertura dos caminhos internos de uma função Python, criando casos objetivos para cada `if/elif/else`.
