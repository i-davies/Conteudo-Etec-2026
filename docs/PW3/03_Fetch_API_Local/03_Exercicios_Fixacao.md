# Exercicios de Fixacao: Fetch e API local

## Exercicios

??? example "Desafio 1: primeiro consumo"
    Use `fetch()` para buscar `api_turma.php` e mostrar:

    - nome da turma em um `<h1>`;
    - disciplinas em uma lista `<ul>`.

??? example "Desafio 2: filtro por parametro"
    No endpoint PHP, aceite parametro `disciplina` via URL (`?disciplina=PW3`).

    No front-end:

    - monte a URL dinamicamente com base em um campo de texto;
    - exiba o retorno formatado na tela.

??? example "Desafio 3: tratamento de erro"
    Simule erro mudando a URL da API para um arquivo inexistente.

    Requisitos:

    - detectar falha;
    - mostrar mensagem amigavel no HTML;
    - nao deixar tela quebrada.

---

## Checklist

- [ ] Fez requisicao com `fetch()`.
- [ ] Converteu resposta com `.json()`.
- [ ] Atualizou a interface com dados recebidos.
- [ ] Tratou erro de forma clara.
