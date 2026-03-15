# Fetch consumindo API criada com PHP

Agora vamos consumir, no front-end, a API em PHP criada na aula anterior.

## Objetivos da unidade

- Entender o papel do `fetch()` no JavaScript.
- Fazer requisicao para endpoint local em PHP.
- Ler JSON retornado e atualizar elementos da pagina.
- Tratar erro de requisicao de forma simples.

---

## O que o fetch faz

`fetch()` envia requisicoes HTTP usando JavaScript.

Com isso, voce atualiza a tela sem recarregar a pagina inteira.

```javascript
fetch("api_turma.php")
  .then((resposta) => resposta.json())
  .then((dados) => {
    console.log(dados);
  });
```

??? tip "Nota didatica"
    O termo AJAX pode aparecer em materiais antigos. Na pratica atual, o `fetch()` e a forma mais comum de fazer esse tipo de requisicao assincrona.

---

## Estrutura de pasta

```text
PW3/03_aula/fetch_api_local/
  index.php
  api_turma.php
  app.js
```

---

## Exemplo funcional

### index.php

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Fetch API Local</title>
</head>
<body>
  <h1 id="titulo">Carregando turma...</h1>
  <button type="button" onclick="carregarTurma()">Carregar Dados</button>
  <pre id="saida"></pre>

  <script src="app.js"></script>
</body>
</html>
```

### api_turma.php

```php
<?php
header("Content-Type: application/json; charset=utf-8");

$dados = [
    "turma" => "3DS",
    "periodo" => "manha",
    "disciplinas" => ["PW3", "BD2", "QTS"]
];

echo json_encode($dados, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
```

### app.js

```javascript
async function carregarTurma() {
  try {
    const resposta = await fetch("api_turma.php");
    const dados = await resposta.json();

    document.getElementById("titulo").textContent = `Turma: ${dados.turma}`;
    document.getElementById("saida").textContent = JSON.stringify(dados, null, 2);
  } catch {
    document.getElementById("titulo").textContent = "Erro ao carregar dados";
  }
}
```

---

## Pratica orientada

??? example "Pratica: front consumindo API local"
    Crie a pasta:

    - `PW3/03_aula/fetch_api_local`

    Requisitos:

    - reutilizar endpoint PHP da aula anterior ou criar novo;
    - usar `fetch()` para buscar o JSON;
    - mostrar dados no HTML (nao apenas no console);
    - exibir mensagem em caso de erro.
