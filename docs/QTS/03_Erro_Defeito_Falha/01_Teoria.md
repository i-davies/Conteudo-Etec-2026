# Erro, Defeito e Falha

Nesta unidade, vamos diferenciar três palavras muito usadas em qualidade de software e ligar esses conceitos a exemplos simples em Python.

---

## Objetivos da unidade

- Entender a diferença entre erro, defeito e falha.
- Relacionar a origem de um problema com o efeito visto pelo usuário.
- Criar scripts simples em Python com erros propositais para observar comportamentos incorretos.

---

## Entendendo os conceitos

Em QTS, essas palavras não são sinônimos.

| Termo | Ideia principal | Exemplo simples |
| --- | --- | --- |
| **Erro** | Equívoco humano ao pensar, planejar ou programar. | O aluno acredita que comparar textos e números sempre funciona sem conversão. |
| **Defeito** | Problema que ficou registrado no código, documento ou projeto. | Uma função foi escrita com operador errado. |
| **Falha** | Comportamento incorreto quando o sistema é executado. | O programa trava ao rodar ou mostra resultado errado. |

??? tip "Resumo rápido"
    O erro nasce na ação humana, o defeito fica no artefato e a falha aparece na execução.

---

## Exemplo prático

Veja o código abaixo:

```python
def calcular_media(n1, n2):
    return n1 + n2 / 2


print(calcular_media(6, 8))
```

O programador queria calcular a média de duas notas, mas esqueceu dos parênteses.

- **Erro:** pensar na fórmula de forma incorreta.
- **Defeito:** escrever `n1 + n2 / 2` em vez de `(n1 + n2) / 2`.
- **Falha:** o programa mostra `10.0` em vez de `7.0`.

---

## Scripts com erros propositais

### Exemplo 1: resultado lógico incorreto

```python
nota = 6

if nota > 6:
    print("Aprovado")
else:
    print("Reprovado")
```

Se a regra desejada for "6 ou mais para aprovação", o operador está inadequado.

### Exemplo 2: tipo de dado inesperado

```python
quantidade = "10"
total = quantidade + 5
print(total)
```

Esse script gera erro porque `str` e `int` não podem ser somados diretamente.

### Exemplo 3: divisão por zero

```python
total = 100
parcelas = 0

print(total / parcelas)
```

Nesse caso, a falha aparece em tempo de execução.

---

## Por que isso importa em testes?

Testar não serve apenas para "ver se abre".

Quando testamos, tentamos responder perguntas como:

- O resultado está correto?
- O sistema trata entradas inválidas?
- O programa continua funcionando em situações limite?

Essas perguntas ajudam a encontrar defeitos antes que eles virem falhas para o usuário.

---

## Prática orientada

??? example "Prática: observando problemas em Python"
    Crie a pasta:

    - `QTS/03_aula/erros_defeitos_falhas`

    Crie os arquivos:

    - `media.py`
    - `tipos.py`
    - `divisao.py`

    Em cada arquivo:

    - escreva um pequeno script com erro proposital;
    - execute o código;
    - anote se o problema representa erro, defeito, falha ou mais de um desses elementos.

---

## Fechamento

- Erro está ligado à ação humana.
- Defeito fica registrado no código.
- Falha aparece quando o software executa de forma incorreta.
- Python ajuda a enxergar isso rapidamente porque conseguimos testar pequenos scripts com facilidade.

