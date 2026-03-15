# HTTP com PHP e retorno em JSON

Nesta unidade, o foco e entender o caminho completo de uma requisicao HTTP e como o PHP pode responder em JSON, simulando uma API simples da turma.

## Objetivos da unidade

- Entender o papel do HTTP na comunicacao cliente-servidor.
- Identificar verbos principais (`GET` e `POST`) e status codes comuns.
- Criar endpoint em PHP retornando JSON.
- Testar resposta JSON no navegador e no DevTools.

---

## HTTP na pratica

Quando o navegador acessa uma URL, ele envia uma requisicao para o servidor.

- `GET`: normalmente usado para buscar dados.
- `POST`: normalmente usado para enviar dados.

Status codes importantes:

- `200`: sucesso.
- `404`: recurso nao encontrado.
- `500`: erro interno do servidor.

??? tip "Dica"
    Abra o DevTools (F12), aba Network, para observar metodo, URL e status de cada requisicao.

---

## Criando uma API simples com PHP

Vamos criar um endpoint que devolve dados em JSON.

### Estrutura de pasta

```text
PW3/05_aula/http_php_json/
  index.php
  api_turma.php
```

### Arquivo `api_turma.php`

```php
<?php
header("Content-Type: application/json; charset=utf-8");

$turma = [
    "nome" => "3DS",
    "periodo" => "tarde",
    "quantidade_alunos" => 32,
    "disciplinas" => ["PW3", "BD2", "QTS"]
];

http_response_code(200);
echo json_encode($turma, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
```

### Arquivo `index.php`

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>PW3 - API simples com PHP</title>
</head>
<body>
  <h1>PW3 - API simples com PHP</h1>
  <p>Acesse <a href="api_turma.php">api_turma.php</a> para ver o JSON.</p>
</body>
</html>
```

??? tip "Padrao para `index.php`"
    Sempre comece com HTML base (estrutura tipo `!` do Emmet). Use blocos `<?php ... ?>` apenas quando precisar de logica, variavel, condicao ou repeticao.

---

## Entendendo o retorno JSON

Exemplo de resposta esperada:

```json
{
  "nome": "3DS",
  "periodo": "tarde",
  "quantidade_alunos": 32,
  "disciplinas": [
    "PW3",
    "BD2",
    "QTS"
  ]
}
```

Isso representa o que uma API real faz: entregar dados estruturados para outro sistema consumir.

---

## Recebendo parametros com GET e POST no PHP

Antes dos exercicios, voce precisa entender como o PHP recebe dados enviados pelo navegador.

### Parametros com GET

No metodo `GET`, os dados vao na URL.

Exemplo de URL:

```text
http://localhost/seu-projeto/api_boas_vindas.php?nome=Ana
```

No PHP, voce le com `$_GET`:

```php
<?php
$nome = $_GET["nome"] ?? "Visitante";

echo json_encode([
    "mensagem" => "Ola, $nome"
]);
```

### Parametros com POST

No metodo `POST`, os dados vao no corpo da requisicao.

Exemplo de formulario simples:

```html
<form action="recebe.php" method="post">
  <input type="text" name="nome" placeholder="Digite seu nome" />
  <button type="submit">Enviar</button>
</form>
```

No arquivo `recebe.php`, voce le com `$_POST`:

```php
<?php
$nome = $_POST["nome"] ?? "Sem nome";

echo "Nome recebido: " . $nome;
```

??? tip "Resumo rapido"
    - `$_GET`: dados na URL, bom para consultas.
    - `$_POST`: dados no corpo, bom para envio de formulario.

---

## Pratica orientada

??? example "Pratica: mini API da turma"
    Crie a pasta:

    - `PW3/05_aula/http_php_json`

    Crie os arquivos:

    - `index.php`
    - `api_turma.php`

    Requisitos:

    - `api_turma.php` deve retornar JSON valido.
    - Definir `Content-Type: application/json`.
    - Retornar status `200` em caso de sucesso.
    - Incluir no JSON: nome da turma, periodo, quantidade de alunos e pelo menos 3 disciplinas.

---

## Execucao no Laragon

- Inicie o Laragon (`Start All`).
- Salve a pasta do projeto dentro de `C:\laragon\www`.
- Acesse no navegador:
  - `http://localhost/seu-projeto/index.php`
  - `http://localhost/seu-projeto/api_turma.php`
