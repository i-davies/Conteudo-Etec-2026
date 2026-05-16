# Exercícios de Fixação

Neste exercício, você vai receber o HTML pronto e deverá criar **apenas o CSS**.

Objetivo: praticar o básico de CSS com um hero e uma seção simples usando Flexbox.

## HTML Base (não alterar)

```html
<header class="topo-site">
  <h1>Festival Cultural</h1>
</header>

<main>
  <section class="hero">
    <h2>Bem-vindos ao Festival Cultural</h2>
    <p>Música, arte e dança para toda a escola.</p>
  </section>

  <section class="destaques">
    <h2>Destaques do Dia</h2>
    <div class="cards">
      <article class="card">Abertura - 8h</article>
      <article class="card">Dança - 10h</article>
      <article class="card">Show - 14h</article>
    </div>
  </section>
</main>

<footer class="rodape-site">
  <p>Escola Técnica - Festival Cultural</p>
</footer>
```

## Requisitos do CSS

- definir fonte da página e remover margens padrão do body;
- estilizar o topo com cor de fundo, cor de texto e padding;
- criar um hero com fundo, texto centralizado e espaçamento interno;
- usar Flexbox na classe `.cards` para deixar os cards lado a lado;
- estilizar `.card` com fundo claro, padding e borda arredondada;
- em telas menores que 768px, empilhar os cards em coluna.

??? example "Checklist de validação"
    - O HTML foi mantido sem alterações.
    - O hero está legível e com espaçamento.
    - Os cards ficam lado a lado em telas grandes.
    - Em telas pequenas, os cards ficam em coluna.
