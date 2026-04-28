# APIs Públicas Diversas

Depois de consumir a ViaCEP, você já entendeu a lógica principal de uma API pública:

- fazer uma requisição;
- receber dados em JSON;
- tratar a resposta no JavaScript;
- atualizar a tela com as informações recebidas.

Agora vamos aplicar essa mesma ideia em APIs públicas com outros tipos de conteúdo.

## Objetivos da unidade

- Entender que a mesma lógica de `fetch()` pode ser usada em diferentes APIs.
- Consumir uma API pública de imagens.
- Atualizar elementos da página com dados vindos da internet.
- Preparar o aluno para explorar APIs públicas por conta própria.

---

## Onde encontrar APIs públicas

Um repositório bastante conhecido para pesquisa é:

```text
https://github.com/public-apis/public-apis
```

Nesse repositório, há várias sugestões organizadas por categoria, como:

- clima;
- imagens;
- animais;
- países;
- piadas;
- esportes;
- educação.

??? tip "Dica"
    Antes de escolher uma API para projeto, verifique se ela exige chave de acesso, cadastro ou autenticação.
    Para as primeiras práticas, prefira APIs abertas e simples.

---

## Exemplo da unidade: galeria com Dog CEO API

Nesta aula, vamos usar uma API pública que retorna imagens aleatórias de cachorros.

Endpoint utilizado:

```text
https://dog.ceo/api/breeds/image/random
```

Exemplo de resposta:

```json
{
  "message": "https://images.dog.ceo/breeds/hound-afghan/n02088094_1003.jpg",
  "status": "success"
}
```

Repare que a URL da imagem vem dentro da propriedade `message`.

---

## Estrutura de pasta

```text
PW3/08_aula/apis_publicas_diversas/
  index.php
  app.js
```

---

## Página base

### index.php

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Galeria com API Pública</title>
</head>
<body>
  <h1>Galeria de Cachorros</h1>
  <p>Clique no botão para carregar uma nova imagem.</p>

  <button type="button" onclick="carregarImagem()">Nova imagem</button>

  <p id="mensagem"></p>
  <img id="foto" src="" alt="Imagem carregada pela API" width="320" />

  <script src="app.js"></script>
</body>
</html>
```

---

## Lógica com `fetch()`

### app.js

```javascript
async function carregarImagem() {
  const mensagem = document.getElementById("mensagem");
  const foto = document.getElementById("foto");

  mensagem.textContent = "Carregando imagem...";

  try {
    const resposta = await fetch("https://dog.ceo/api/breeds/image/random");

    if (!resposta.ok) {
      throw new Error("Falha na requisição");
    }

    const dados = await resposta.json();

    foto.src = dados.message;
    mensagem.textContent = "Imagem carregada com sucesso.";
  } catch {
    mensagem.textContent = "Erro ao carregar imagem da API.";
  }
}
```

---

## O que esse exemplo ensina

Mesmo sendo uma API diferente da ViaCEP, o processo continua praticamente igual:

1. fazer `fetch()` para a URL da API;
2. verificar se a resposta foi bem-sucedida;
3. converter para JSON com `response.json()`;
4. usar os dados recebidos na interface;
5. tratar erros com mensagem amigável.

Essa é a principal ideia que você precisa dominar.

---

## Outras APIs públicas que podem ser exploradas

Além da Dog CEO API, você pode testar outras opções simples:

- `https://restcountries.com/` para dados de países;
- `https://open-meteo.com/` para clima;
- `https://picsum.photos/` para imagens aleatórias;
- `https://api.thecatapi.com/v1/images/search` para imagens de gatos.

Cada uma retorna dados diferentes, mas a lógica de consumo com JavaScript continua próxima do que você já aprendeu.

---

## Prática orientada

??? example "Prática: galeria que muda via API"
    Crie a pasta:

    - `PW3/08_aula/apis_publicas_diversas`

    Requisitos:

    - criar uma página com botão para buscar novo conteúdo;
    - consumir uma API pública com `fetch()`;
    - atualizar a tela com o dado retornado;
    - mostrar mensagem em caso de erro;