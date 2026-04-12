# REVISÃO PARA PROVA PRÁTICA - PW3 (1º BIMESTRE)

> Esta revisão apresenta o formato da prova prática e os requisitos que serão avaliados. Use este material para treinar a criação completa do projeto antes da avaliação.

---

## Objetivos desta Revisão

Ao treinar esta proposta, você deve:

1. Organizar um projeto PHP com página inicial e dois endpoints.
2. Retornar JSON no padrão solicitado para o método `GET`.
3. Receber dados com `POST` e responder em JSON no formato obrigatório.
4. Garantir que o projeto funcione localmente, sem internet.

---

## Proposta da Questão Prática

Desenvolva um projeto em PHP com o tema **Agenda de Reservas de Laboratório da ETEC**.

Você deverá criar:

- 1 página inicial para testes;
- 1 endpoint `GET`;
- 1 endpoint `POST`.

---

## Requisitos Obrigatórios da Prova

- Criar uma pasta com o nome no padrão:
  - `3DS_PW3_T1ouT2_Nome_Completo`
- Dentro da pasta, criar os arquivos:
  - `index.php`
  - `api_get_reservas.php`
  - `api_post_reserva.php`
- No arquivo `index.php`, incluir:
  - 1 link para executar o endpoint de `GET`;
  - 1 formulário para envio ao endpoint de `POST` com os campos `titulo`, `data` e `local`.
- O endpoint `api_get_reservas.php` deve retornar JSON no formato obrigatório.
- O endpoint `api_post_reserva.php` deve receber os dados enviados e retornar JSON no formato obrigatório.

### Modelo JSON obrigatório - GET

```json
{
  "status": "sucesso",
  "metodo": "GET",
  "tema": "Agenda de Reservas de Laboratório da ETEC",
  "dados": {
    "turma": "3DS",
    "periodo": "Diurno",
    "reservas": [
      {
        "id": 1,
        "titulo": "Reserva do Laboratório 1",
        "data": "2026-04-10",
        "local": "Laboratório 1"
      },
      {
        "id": 2,
        "titulo": "Reserva do Laboratório 2",
        "data": "2026-05-18",
        "local": "Laboratório 2"
      }
    ]
  }
}
```

### Modelo JSON obrigatório - POST

```json
{
  "status": "sucesso",
  "metodo": "POST",
  "tema": "Agenda de Reservas de Laboratório da ETEC",
  "mensagem": "Reserva cadastrada com sucesso.",
  "reserva": {
    "id": 3,
    "titulo": "Título da reserva recebida",
    "data": "Data recebida",
    "local": "Laboratório recebido"
  }
}
```

---

## Trechos de Apoio para os Endpoints

Use os trechos abaixo para montar a resposta JSON:

```php
header('Content-Type: application/json; charset=utf-8');
```

```php
echo json_encode($resposta, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
```

---

## Checklist de Treino Antes da Prova

- A pasta está no nome solicitado.
- Os três arquivos foram criados corretamente.
- O link de `GET` funciona no `index.php`.
- O formulário envia `titulo`, `data` e `local` para o `POST`.
- O JSON de `GET` está no formato exigido.
- O JSON de `POST` está no formato exigido.
- O projeto executa localmente sem internet.

---

## Entrega na Avaliação

- A entrega será presencial, por pasta local.
- A pasta deve seguir exatamente o padrão solicitado.
- Todos os arquivos devem estar funcionais para teste no laboratório.

