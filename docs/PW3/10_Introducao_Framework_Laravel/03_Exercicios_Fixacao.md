# Exercícios de Fixação: Laravel no Laragon

Agora você vai aplicar a base da aula em um mini CRUD simples usando Laravel.

## Objetivo da atividade

Criar uma funcionalidade de cadastro e listagem usando rota, controller, model, migration e view.

## Regras da atividade

- usar Laravel com projeto rodando localmente;
- manter organização MVC;
- aplicar validação no controller;
- exibir dados salvos em uma view Blade.

## Desafio principal

Crie uma aplicação de **cadastro de livros** com:

- campos `titulo`, `autor` e `ano_publicacao`;
- formulário para inserir novos livros;
- listagem dos livros cadastrados;
- mensagens simples de validação para entradas inválidas.

## Passos sugeridos

1. Criar model e migration para `Livro`.
2. Criar controller com métodos `index` e `store`.
3. Registrar rotas GET e POST em `routes/web.php`.
4. Criar view Blade com formulário e lista.
5. Executar e testar no navegador.

## Critérios de avaliação

- estrutura MVC aplicada corretamente;
- migration criada com tipos adequados;
- dados sendo persistidos no banco;
- view renderizando lista atualizada;
- código organizado e legível.

??? example "Desafio extra"
    Adicione um botão para remover livro da lista.

    Dica:

    - criar rota com método `DELETE`;
    - incluir formulário com `@method('DELETE')`;
    - implementar método `destroy` no controller.

## Checklist

- [ ] O projeto Laravel executa sem erro no meu ambiente.
- [ ] Consigo cadastrar livros pelo formulário.
- [ ] Os livros aparecem listados na tela.
- [ ] A validação impede dados incompletos.
- [ ] Minha estrutura segue o padrão MVC.
