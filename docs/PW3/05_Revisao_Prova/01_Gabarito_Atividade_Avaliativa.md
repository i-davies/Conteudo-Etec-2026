# Gabarito - Atividade PW3

> Este gabarito apresenta uma solucao possivel para a atividade avaliativa de PW3, mantendo exatamente o tema e o formato de JSON exigidos no enunciado.

---

## Objetivos desta Revisao

Ao revisar este gabarito, voce deve:

1. Entender o fluxo entre front-end (`index.php`) e endpoints da API.
2. Revisar o retorno JSON do metodo `GET` no formato exigido.
3. Revisar o recebimento de dados via metodo `POST` no formato exigido.
4. Conferir se os arquivos e nomes de campos estao iguais aos da atividade.

---

## Estrutura de Arquivos

```text
PW3/gabarito_atividade/
  index.php
  api_get_eventos.php
  api_post_evento.php
```

---

## Arquivo `index.php`

```php
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Agenda de Eventos da ETEC</title>
</head>
<body>
  <h1>Agenda de Eventos da ETEC</h1>

  <p>
    <a href="api_get_eventos.php" target="_blank">Consultar eventos (GET)</a>
  </p>

  <h2>Cadastrar evento (POST)</h2>
  <form action="api_post_evento.php" method="post">
    <label for="titulo">Titulo:</label><br>
    <input type="text" id="titulo" name="titulo" required><br><br>

    <label for="data">Data:</label><br>
    <input type="date" id="data" name="data" required><br><br>

    <label for="local">Local:</label><br>
    <input type="text" id="local" name="local" required><br><br>

    <button type="submit">Enviar POST</button>
  </form>
</body>
</html>
```

Pontos importantes:

- Link para executar o endpoint de `GET`.
- Formulario para enviar `titulo`, `data` e `local` para o endpoint de `POST`.
- Campos `name` iguais aos esperados no backend.

---

## Arquivo `api_get_eventos.php`

```php
<?php
header('Content-Type: application/json; charset=utf-8');

$resposta = [
  "status" => "sucesso",
  "metodo" => "GET",
  "tema" => "Agenda de Eventos da ETEC",
  "dados" => [
    "turma" => "3DS",
    "periodo" => "Diurno",
    "eventos" => [
      [
        "id" => 1,
        "titulo" => "Feira Tecnologica",
        "data" => "2026-04-10",
        "local" => "Patio Principal"
      ],
      [
        "id" => 2,
        "titulo" => "Semana da Programacao",
        "data" => "2026-05-18",
        "local" => "Laboratorio 2"
      ],
      [
        "id" => 3,
        "titulo" => "Mostra de TCC",
        "data" => "2026-06-22",
        "local" => "Auditorio"
      ]
    ]
  ]
];

echo json_encode($resposta, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
```

Pontos importantes:

- Header correto para JSON com UTF-8.
- Metodo identificado como `GET`.
- Chaves do JSON mantidas conforme o enunciado.

---

## Arquivo `api_post_evento.php`

```php
<?php
header('Content-Type: application/json; charset=utf-8');

$titulo = $_POST['titulo'] ?? 'campo nao informado';
$data = $_POST['data'] ?? 'campo nao informado';
$local = $_POST['local'] ?? 'campo nao informado';

$resposta = [
  "status" => "sucesso",
  "metodo" => "POST",
  "tema" => "Agenda de Eventos da ETEC",
  "mensagem" => "Evento cadastrado com sucesso.",
  "evento" => [
    "id" => 4,
    "titulo" => $titulo,
    "data" => $data,
    "local" => $local
  ]
];

echo json_encode($resposta, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
```

Pontos importantes:

- Leitura dos campos `titulo`, `data` e `local` via `$_POST`.
- Uso de valor padrao quando o campo nao e enviado.
- Resposta JSON seguindo o modelo obrigatorio da atividade.

---

## Requisitos Obrigatorios Atendidos

- Tema do projeto: `Agenda de Eventos da ETEC`.
- `index.php` com link de `GET` e formulario de `POST`.
- Endpoint `GET` retornando JSON no formato exigido.
- Endpoint `POST` retornando JSON no formato exigido.
- Organizacao separada por arquivo, facilitando versionamento com branch.

---

## Pontos Importantes para a Prova

1. Diferenca entre metodo `GET` e metodo `POST`.
2. Uso de `header('Content-Type: application/json; charset=utf-8')`.
3. Estrutura de array associativo no PHP para gerar JSON.
4. Uso de `json_encode(..., JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT)`.
5. Coerencia entre campos do formulario HTML e chaves do `$_POST`.
6. Manter exatamente os nomes das chaves do JSON solicitadas no enunciado.

## Proximo Passo

Pratique o fluxo completo: abrir o `index.php`, testar o link de `GET` e enviar o formulario de `POST` validando o JSON retornado em cada caso.
