# Semântica no HTML: por que usar `header` e `footer`?

As tags semânticas ajudam a organizar melhor a página e deixam o código mais fácil de entender.
Em vez de usar apenas `div` para tudo, podemos usar elementos que já explicam a função de cada parte.

## Objetivos da Aula

- Entender o papel de `header` e `footer` em uma página.
- Diferenciar estrutura semântica de organização genérica com `div`.
- Montar uma página temática usando textos, imagens e tabela com uma estrutura clara.

## O que é Semântica em HTML

Semântica significa usar tags que descrevem o significado do conteúdo.
Isso melhora a leitura do código para quem desenvolve e também ajuda em acessibilidade.

Exemplos de tags semânticas:

- `header`: área de topo da página ou de uma seção.
- `main`: conteúdo principal.
- `section`: agrupamento de conteúdo relacionado.
- `article`: bloco independente de conteúdo.
- `footer`: rodapé da página ou de uma seção.

??? tip "Dica"
    Pense na página como um jornal: topo com título (`header`), conteúdo no meio (`main`/`section`) e informações finais no rodapé (`footer`).

## `header`: topo com contexto

A tag `header` geralmente contém:

- título da página;
- subtítulo;
- menu de navegação.

Exemplo simples:

```html
<header>
  <h1>Mundo dos Filmes</h1>
  <p>Notícias, curiosidades e recomendações</p>
</header>
```

## `footer`: fechamento com informações úteis

A tag `footer` é usada para informações finais, como:

- autor da página;
- turma;
- contatos;
- direitos autorais.

Exemplo simples:

```html
<footer>
  <p>Desenvolvido por Ana - 1º DS</p>
  <p>ETEC 2026</p>
</footer>
```

## Exemplo Completo: Página Tema com Textos, Imagens e Tabela

Neste exemplo, a estrutura semântica organiza uma página com:

- topo com título e introdução;
- seção de texto;
- seção com imagem e legenda;
- seção com tabela de dados;
- rodapé com informações finais.

```html
<header>
  <h1>Guia de Pontos Turísticos</h1>
  <p>Conheça lugares para visitar na cidade.</p>
</header>

<main>
  <section>
    <h2>Sobre o Projeto</h2>
    <p>Esta página apresenta sugestões de locais para passeio em família.</p>
  </section>

  <section>
    <h2>Destaque da Semana</h2>
    <figure>
      <img src="imagens/parque.jpg" alt="Parque da cidade com lago e árvores" width="320">
      <figcaption>Parque Central no fim da tarde.</figcaption>
    </figure>
  </section>

  <section>
    <h2>Horários de Visitação</h2>
    <table>
      <tr>
        <th>Local</th>
        <th>Dia</th>
        <th>Horário</th>
      </tr>
      <tr>
        <td>Parque Central</td>
        <td>Sábado</td>
        <td>09:00 às 18:00</td>
      </tr>
      <tr>
        <td>Museu Histórico</td>
        <td>Domingo</td>
        <td>10:00 às 16:00</td>
      </tr>
    </table>
  </section>
</main>

<footer>
  <p>Turma 1º DS - PW1</p>
  <p>Atualizado em 2026</p>
</footer>
```

## Quando usar `div` e quando usar tags semânticas

- Use `div` quando precisar de um bloco genérico sem significado específico.
- Use `header`, `main`, `section`, `article` e `footer` quando quiser indicar claramente a função daquele bloco.

Não é uma regra de “um ou outro”.
O ideal é combinar os dois com organização e clareza.

## Exercício de Fixação

Crie o arquivo `PW1/07_aula/semantica_header_footer/pagina_tema.html` com:

- um `header` com título e pequeno texto de introdução;
- uma área principal com:
  - um texto em parágrafo sobre o tema escolhido;
  - uma imagem com `alt` e legenda em `figure`;
  - uma tabela com pelo menos duas linhas de dados;
- um `footer` com nome do aluno e turma.

Tema sugerido: esporte, música, filmes, jogos ou tecnologia.
