# Atividade Avaliativa em Sala

> Esta atividade vale nota e deve ser feita em sala de aula.

---

## Tema da Atividade

**Agenda de Eventos da ETEC** com API em PHP e retorno em JSON.

## Objetivo

Aplicar os conteúdos estudados em PW3 até aqui em um mini projeto com foco em método GET, e POST, organização de API em PHP e fluxo de versionamento com Git.

## Requisitos obrigatórios

- Tema obrigatório do projeto:
   - **Agenda de Eventos da ETEC**
- Criar um `index.php` contendo:
      - 1 link para executar/consultar o endpoint de **GET**;
      - 1 formulário para envio ao endpoint de **POST** com os campos `titulo`, `data` e `local`.
- Na branch `main` (ou `master`), implementar o endpoint de **GET** com PHP retornando JSON do tema.
- Criar a branch `feature/post-evento` para implementar somente o endpoint de **POST**.
- Realizar commits com mensagens claras nas duas etapas (main/master e feature).
- O retorno JSON deve seguir exatamente os modelos abaixo.

### Modelo JSON obrigatório - GET

```json
{
   "status": "sucesso",
   "metodo": "GET",
   "tema": "Agenda de Eventos da ETEC",
   "dados": {
      "turma": "3DS",
      "periodo": "Diurno",
      "eventos": [
         {
            "id": 1,
            "titulo": "Feira Tecnológica",
            "data": "2026-04-10",
            "local": "Patio Principal"
         },
         {
            "id": 2,
            "titulo": "Semana da Programação",
            "data": "2026-05-18",
            "local": "Laboratório 2"
         },
         {
            "id": 3,
            "titulo": "Mostra de TCC",
            "data": "2026-06-22",
            "local": "Auditório"
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
   "tema": "Agenda de Eventos da ETEC",
   "mensagem": "Evento cadastrado com sucesso.",
   "evento": {
      "id": 4,
      "titulo": "Nome do evento recebido",
      "data": "data recebida",
      "local": "Local recebido"
   }
}
```

---

## Entrega

- Pasta do projeto com os arquivos PHP do GET e do POST.
- Histórico Git com branch, commits e merge conforme solicitado.
- Dentro do link da disciplina no Google Classroom, localizar a atividade para envio: 
      - [Link da atividade](https://classroom.google.com/c/Nzk2Nzk3MTczNTkz?cjc=7hmikw5f)
- Na entrega, informar o nome completo.
- Na entrega, incluir o link do repositório no GitHub.

---

## Critérios de Correção

- 3,0 pts: endpoint GET funcionando na main/master com retorno JSON no formato solicitado.
- 3,0 pts: endpoint POST funcionando na branch feature com retorno JSON no formato solicitado.
- 2,0 pts: organização e clareza do código PHP.
- 2,0 pts: uso correto de Git (branch, commits e merge).

## Observação

O aluno deve manter exatamente as chaves e a estrutura dos JSONs obrigatórios de GET e POST apresentados nesta atividade.
