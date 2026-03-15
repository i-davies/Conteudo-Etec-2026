# Exercicios de Fixacao: HTTP com PHP e JSON

## Exercicios

??? example "Desafio 2: endpoint em JSON"
    Crie `api_alunos.php` retornando um JSON com:

    - nome da escola
    - turma
    - lista de 5 alunos

    Regras:

    - usar `header("Content-Type: application/json; charset=utf-8")`
    - usar `json_encode(...)`
    - retornar status `200`

??? example "Desafio 3: endpoint com parametro"
    Crie `api_boas_vindas.php`.

    Se a URL tiver `?nome=Ana`, o retorno deve ser:

    ```json
    {
      "mensagem": "Ola, Ana"
    }
    ```

    Se nao tiver `nome`, retornar:

    ```json
    {
      "erro": "Parametro nome nao informado"
    }
    ```

---

## Checklist

- [ ] Entendeu o papel de `GET` e status code.
- [ ] Criou endpoint PHP retornando JSON valido.
- [ ] Usou `Content-Type` corretamente.
- [ ] Testou endpoint com e sem parametro.