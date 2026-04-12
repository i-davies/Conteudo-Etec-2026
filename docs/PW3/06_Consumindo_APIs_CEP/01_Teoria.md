# Consumindo APIs (CEP) com ViaCEP

Nesta unidade, vamos usar a API ViaCEP para preencher automaticamente um formulário de endereço a partir do CEP digitado.

## Objetivos da unidade

- Entender o que é uma API pública.
- Consumir a API ViaCEP com `fetch()`.
- Preencher campos de endereço no formulário com os dados retornados.
- Validar se o CEP informado possui exatamente 8 dígitos.

---

## O que é a ViaCEP

A ViaCEP é uma API gratuita para consulta de endereços no Brasil.

Endpoint base:

```text
https://viacep.com.br/ws/CEP/json/
```

Exemplo de consulta:

```text
https://viacep.com.br/ws/01001000/json/
```

A ViaCEP também permite retorno em XML, trocando `json` por `xml` na URL.

```text
https://viacep.com.br/ws/01001000/xml/
```

??? tip "Dica"
    Antes de consumir no código, abra a URL no navegador para ver o JSON retornado.

---

## JSON e XML: diferença simplificada

Os dois formatos servem para transportar dados entre sistemas.

- **JSON**: mais enxuto e muito usado com JavaScript e `fetch()`.
- **XML**: mais verboso, com tags de abertura e fechamento.

Exemplo em JSON:

```json
{
  "cep": "01001-000",
  "logradouro": "Praça da Sé",
  "uf": "SP"
}
```

Exemplo em XML:

```xml
<xmlcep>
  <cep>01001-000</cep>
  <logradouro>Praça da Sé</logradouro>
  <uf>SP</uf>
</xmlcep>
```

Na prática da aula, vamos priorizar JSON porque ele é mais simples de ler no JavaScript.

---

## Estrutura de pasta

```text
PW3/06_aula/consumindo_api_cep/
  index.php
  app.js
```

---

## Formulário base

### index.php

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Consulta de CEP</title>
</head>
<body>
  <h1>Consulta de Endereço por CEP</h1>

  <label for="cep">CEP</label>
  <input type="text" id="cep" placeholder="Digite 8 dígitos" maxlength="8" />
  <button type="button" onclick="buscarCep()">Buscar</button>

  <p id="mensagem"></p>

  <label for="logradouro">Logradouro</label>
  <input type="text" id="logradouro" readonly />

  <label for="bairro">Bairro</label>
  <input type="text" id="bairro" readonly />

  <label for="cidade">Cidade</label>
  <input type="text" id="cidade" readonly />

  <label for="uf">UF</label>
  <input type="text" id="uf" readonly />

  <script src="app.js"></script>
</body>
</html>
```

---

## Lógica de validação e consumo da API

### app.js

```javascript
function limparEndereco() {
  document.getElementById("logradouro").value = "";
  document.getElementById("bairro").value = "";
  document.getElementById("cidade").value = "";
  document.getElementById("uf").value = "";
}

async function buscarCep() {
  const mensagem = document.getElementById("mensagem");
  const cep = document.getElementById("cep").value.trim();

  limparEndereco();
  mensagem.textContent = "";

  try {
    const resposta = await fetch(`https://viacep.com.br/ws/${cep}/json/`);

    if (!resposta.ok) {
      throw new Error("Falha na requisição");
    }

    const dados = await resposta.json();

    if (dados.erro) {
      mensagem.textContent = "CEP não encontrado.";
      return;
    }

    document.getElementById("logradouro").value = dados.logradouro || "";
    document.getElementById("bairro").value = dados.bairro || "";
    document.getElementById("cidade").value = dados.localidade || "";
    document.getElementById("uf").value = dados.uf || "";

    mensagem.textContent = "Endereço carregado com sucesso.";
  } catch {
    mensagem.textContent = "Erro ao consultar a API. Tente novamente.";
  }
}
```

---

## Fluxo da solução

1. O usuário digita o CEP.
2. O código valida se há 8 dígitos numéricos.
3. Se válido, faz `fetch()` na ViaCEP.
4. Se o CEP existir, preenche os campos automaticamente.
5. Se houver erro, exibe mensagem amigável.