# Gabarito - Prova Prática PW3

> Este gabarito apresenta uma solução possível para a prova prática do 1º bimestre. Outras implementações também podem estar corretas, desde que todos os requisitos obrigatórios sejam atendidos.

---

## Objetivos desta Revisão

Ao revisar este gabarito, você deve:

1. Entender a organização dos arquivos do projeto em PHP.
2. Conferir o formato de resposta JSON no método `GET`.
3. Conferir o recebimento dos dados no método `POST`.
4. Verificar se a estrutura final atende exatamente ao enunciado da prova.

---

## Estrutura de Arquivos

```text
3DS_PW3_T1ouT2_Nome_Completo/
  index.php
  api_get_reservas.php
  api_post_reserva.php
```

---

## Arquivo `index.php`

```php
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Agenda de Reservas de Laboratório da ETEC</title>
</head>
<body>
  <h1>Agenda de Reservas de Laboratório da ETEC</h1>

  <p>
    <a href="api_get_reservas.php" target="_blank">Consultar reservas (GET)</a>
  </p>

  <h2>Cadastrar reserva (POST)</h2>
  <form action="api_post_reserva.php" method="post">
    <label for="titulo">Título:</label><br>
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
- Formulário para enviar `titulo`, `data` e `local` no `POST`.
- Campos `name` do formulário iguais aos esperados no backend.

---

## Arquivo `api_get_reservas.php`

```php
<?php
header('Content-Type: application/json; charset=utf-8');

$resposta = [
  "status" => "sucesso",
  "metodo" => "GET",
  "tema" => "Agenda de Reservas de Laboratório da ETEC",
  "dados" => [
    "turma" => "3DS",
    "periodo" => "Diurno",
    "reservas" => [
      [
        "id" => 1,
        "titulo" => "Reserva do Laboratório 1",
        "data" => "2026-04-10",
        "local" => "Laboratório 1"
      ],
      [
        "id" => 2,
        "titulo" => "Reserva do Laboratório 2",
        "data" => "2026-05-18",
        "local" => "Laboratório 2"
      ]
    ]
  ]
];

echo json_encode($resposta, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
```

Pontos importantes:

- Header correto para retorno JSON em UTF-8.
- Método identificado como `GET`.
- Estrutura e chaves do JSON mantidas conforme enunciado.

---

## Arquivo `api_post_reserva.php`

```php
<?php
header('Content-Type: application/json; charset=utf-8');

$titulo = $_POST['titulo'] ?? 'campo não informado';
$data = $_POST['data'] ?? 'campo não informado';
$local = $_POST['local'] ?? 'campo não informado';

$resposta = [
  "status" => "sucesso",
  "metodo" => "POST",
  "tema" => "Agenda de Reservas de Laboratório da ETEC",
  "mensagem" => "Reserva cadastrada com sucesso.",
  "reserva" => [
    "id" => 3,
    "titulo" => $titulo,
    "data" => $data,
    "local" => $local
  ]
];

echo json_encode($resposta, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
```

Pontos importantes:

- Leitura dos campos via `$_POST`.
- Uso de valor padrão quando algum campo não é enviado.
- Resposta JSON no formato obrigatório para o método `POST`.

---

## Requisitos Obrigatórios Atendidos

- Pasta no padrão `3DS_PW3_T1ouT2_Nome_Completo`.
- `index.php` com link de `GET` e formulário de `POST`.
- Endpoint de `GET` com retorno JSON no formato exigido.
- Endpoint de `POST` recebendo dados e retornando JSON no formato exigido.
- Projeto pronto para execução local, sem internet.

---

## Pontos Importantes para a Prova

1. Manter exatamente os nomes das chaves do JSON solicitadas no enunciado.
2. Garantir correspondência entre campos do formulário HTML e `$_POST`.
3. Usar `header('Content-Type: application/json; charset=utf-8')` em ambos os endpoints.
4. Usar `json_encode($resposta, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT)` no retorno.
5. Testar os dois fluxos (`GET` e `POST`) antes da entrega.
