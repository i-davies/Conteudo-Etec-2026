# Exercícios de Fixação: Introdução ao FastAPI com UV

## Exercícios

??? example "Desafio 1: projeto em pasta separada"
    Crie a pasta do projeto `fastapi_qts` e inicialize com UV.

    Requisitos:

    - executar `uv init`;
    - adicionar dependências com `uv add "fastapi[standard]"`;
    - criar a pasta `app` e o arquivo `main.py`.

??? example "Desafio 2: duas rotas GET"
    Implemente no `main.py`:

    - rota `/` retornando mensagem de funcionamento;
    - rota `/health` retornando status da API.

    Depois, execute a aplicação e teste no navegador.

??? example "Desafio 3: rota com parâmetro"
    Crie a rota `/multiplicar` recebendo `a` e `b` como inteiros e retornando o resultado.

    Exemplo de teste:

    - `http://127.0.0.1:8000/multiplicar?a=4&b=6`

??? example "Desafio 4: rota POST"
    Crie uma rota `POST /produtos` com um modelo contendo:

    - `nome` (texto);
    - `preco` (decimal ou float);
    - `ativo` (booleano, padrão `true`).

    Teste via `/docs` enviando um JSON válido.

---

## Checklist

- [ ] Criei o projeto FastAPI em pasta separada.
- [ ] Instalei dependências com UV.
- [ ] Executei a API com `uv run fastapi dev app/main.py`.
- [ ] Implementei e testei rotas GET e POST.
- [ ] Validei a API pela documentação em `/docs`.
