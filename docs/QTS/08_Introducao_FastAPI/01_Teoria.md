# Introdução ao FastAPI

Nesta unidade, vamos iniciar o projeto `fastapi_qts` com FastAPI usando o fluxo de instalação com UV. Esse mesmo projeto será reutilizado ao longo do bimestre e incrementado aos poucos nas próximas aulas.

---

## Objetivos da unidade

- Entender o que é FastAPI e quando usar.
- Criar um projeto novo em pasta separada com UV.
- Instalar dependências essenciais de forma simples.
- Executar uma API local e testar rotas básicas.
- Implementar exemplos funcionais com parâmetros e corpo de requisição.

---

## O que é FastAPI

FastAPI é um framework Python para criar APIs HTTP de forma rápida e organizada.

Pontos importantes para a disciplina:

- sintaxe clara para definir rotas;
- validação automática de dados com tipagem;
- documentação interativa gerada automaticamente;
- ótimo para projetos de backend modernos.

??? tip "Ligação com QTS"
    FastAPI facilita testar comportamento de funções e rotas. Isso ajuda na qualidade, porque conseguimos validar respostas esperadas com testes automatizados.

---

## Estrutura em pasta separada

Para manter organização, crie a pasta base do projeto `fastapi_qts`:

```text
fastapi_qts/
  app/
    main.py
```

No terminal:

```bash
mkdir fastapi_qts
cd fastapi_qts
uv init
uv add "fastapi[standard]"
mkdir app
```

---

## Primeiro arquivo da API

Crie o arquivo `app/main.py`:

```python
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def raiz():
    return {"mensagem": "API FastAPI funcionando"}


@app.get("/health")
def health():
    return {"status": "ok"}
```

Executar servidor:

```bash
uv run fastapi dev app/main.py
```

Teste no navegador:

- `http://127.0.0.1:8000/`
- `http://127.0.0.1:8000/health`
- `http://127.0.0.1:8000/docs`

---

## Exemplo funcional com parâmetros

Adicione em `app/main.py`:

```python
@app.get("/soma")
def soma(a: int, b: int):
    return {"resultado": a + b}
```

Teste:

- `http://127.0.0.1:8000/soma?a=7&b=5`

Resultado esperado:

```json
{"resultado": 12}
```

---

## Exemplo funcional com corpo JSON

Adicione em `app/main.py`:

```python
from pydantic import BaseModel


class Tarefa(BaseModel):
    titulo: str
    concluida: bool = False


@app.post("/tarefas")
def criar_tarefa(tarefa: Tarefa):
    return {
        "mensagem": "Tarefa recebida com sucesso",
        "dados": tarefa,
    }
```

Exemplo de requisição no `/docs`:

```json
{
  "titulo": "Estudar FastAPI",
  "concluida": false
}
```

---

## Resumo da unidade

Nesta aula, você criou uma API com FastAPI usando UV em uma pasta separada, executou o servidor local, testou rotas e trabalhou com validação de dados usando tipagem.
