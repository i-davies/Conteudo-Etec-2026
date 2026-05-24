# Atividade Avaliativa em Sala

> Esta atividade vale nota e deve ser feita em sala de aula.

---

## Tema da atividade

Mini CRUD de livros com Laravel, utilizando o projeto já configurado e fluxo de versionamento com branch.

## Objetivo

Aplicar o conteúdo de Laravel com padrão MVC, reforçando a criação de migration, model, controller, rotas e view, além de praticar organização de trabalho em branch.

## Contexto da prática

Nesta atividade, você não vai criar um projeto Laravel do zero.
Você vai usar o projeto que já está configurado e funcionando no ambiente.

O foco será evoluir o projeto com uma nova funcionalidade de cadastro e listagem de livros.

## Requisitos obrigatórios

- criar e trabalhar em uma nova branch para a funcionalidade;
- manter organização MVC;
- cadastrar livros com os campos `titulo`, `autor` e `ano_publicacao`;
- validar dados de entrada no controller;
- exibir listagem em uma view Blade;
- persistir dados no banco e comprovar funcionamento.

---

## Passo a passo guiado

### Preparação do repositório

1. Acesse a pasta do projeto Laravel já existente.
2. Crie uma branch de trabalho para esta atividade.

Nome para a branch:

```text
feature/livros-atividade
```

3. Confirme se você está na branch criada antes de começar a implementação.

??? tip "Boas práticas de versionamento"
    Faça commits pequenos por etapa concluída, com mensagens claras. Exemplo: estrutura de banco, controller e rotas, view e testes.

### Estrutura de banco de dados (migration)

Crie model e migration para `Livro` com o Artisan e ajuste a migration para refletir o cenário abaixo.

A tabela `livros` deve conter:

- `id` (chave primária);
- `titulo` (texto curto obrigatório);
- `autor` (texto curto obrigatório);
- `ano_publicacao` (número inteiro positivo obrigatório);
- campos de controle de criação e atualização (timestamps).

Orientações importantes para a migration:

- use tipos compatíveis com cada campo;
- não permita campos obrigatórios em branco;
- pense no tamanho adequado de texto para evitar desperdício;
- aplique nomenclatura clara e consistente.

Depois de ajustar a migration, execute as migrações no banco do projeto.

### Camada de model

No model `Livro`:

- configure os campos de preenchimento em massa;
- mantenha apenas o necessário para esta etapa;
- siga o padrão de nomes já usado no projeto.

### Camada de controller

Crie um controller para livros com, no mínimo, dois métodos:

- `index`: para listar os livros;
- `store`: para validar e salvar novos livros.

No método de cadastro (`store`), aplique validações para:

- `titulo`: obrigatório, com tamanho mínimo;
- `autor`: obrigatório, com tamanho mínimo;
- `ano_publicacao`: obrigatório, inteiro, com faixa válida.

Sugestão de faixa para ano:

- maior que `0`;
- menor ou igual ao ano atual.

### Rotas

Registre rotas web para:

- exibir a tela de livros (`GET`);
- receber envio do formulário (`POST`).

Mantenha nomes e caminhos simples, coerentes com a funcionalidade.

### View Blade

Crie uma view para:

- exibir formulário de cadastro;
- mostrar mensagens de erro de validação;
- listar livros já cadastrados;
- informar quando não houver registros.

Não é necessário estilização avançada. O foco é funcionamento correto do fluxo MVC.

### Teste funcional

Com a aplicação em execução, valide:

- cadastro de ao menos 3 livros;
- bloqueio de entradas inválidas;
- atualização da listagem após cada cadastro;
- persistência dos dados no banco.

---

## Critérios de Correção

- 2,0 pts: estrutura MVC aplicada corretamente com separação entre model, controller, rotas e view.
- 2,0 pts: migration de `livros` criada com tipos adequados e campos obrigatórios definidos corretamente.
- 2,0 pts: validação implementada no controller para `titulo`, `autor` e `ano_publicacao`.
- 2,0 pts: dados persistidos e listados corretamente na interface, com comportamento esperado em entradas inválidas.
- 2,0 pts: organização do código, uso correto da branch da atividade e commits coerentes com as etapas desenvolvidas.

## Entrega

- enviar o link do repositório com a branch da atividade via Teams;
- evidencias do funcionamento (prints ou vídeo curto) do cadastro e listagem de livros e banco de dados atualizado;
- identificar no envio: turma, nome completo e nome da branch.

## Checklist

- [ ] Criei e utilizei uma branch específica para a atividade.
- [ ] Estruturei a migration de `livros` com os campos obrigatórios.
- [ ] Cadastrei livros com validação no controller.
- [ ] Exibi os livros em uma view Blade.
- [ ] Testei o fluxo completo de cadastro e listagem.
