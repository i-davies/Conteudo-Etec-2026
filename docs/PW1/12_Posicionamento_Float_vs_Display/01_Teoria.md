# Posicionamento: Float vs Display

Agora que sua página tem estrutura, cores, tipografia, espaçamento e backgrounds bonitos, é hora de organizar elementos lado a lado.
Esse é um passo importante para criar layouts mais sofisticados.

## Objetivos da Aula

- Entender a propriedade `float` e seus usos.
- Conhecer diferentes valores de `display`.
- Saber quando usar cada técnica de posicionamento.
- Aplicar alinhamento de imagens com texto no projeto Festival Cultural.

## O que é Float

Float é uma propriedade CSS tradicional que permite fazer um elemento "flutuar" e deixar o texto contorná-lo.

```css
img {
  float: left;
}
```

Com isso, o texto flui ao redor da imagem, em vez de ficar abaixo dela.

### Float: left e Float: right

```html
<style>
  .imagem-esquerda {
    float: left;
    margin-right: 20px;
  }

  .imagem-direita {
    float: right;
    margin-left: 20px;
  }
</style>

<img src="apresentacao.jpg" alt="Apresentação musical" class="imagem-esquerda">
<p>
  O festival traz as melhores apresentações culturais da região.
  Cada ano, artistas e grupos se reúnem para celebrar a criatividade...
</p>

<img src="danca.jpg" alt="Dança tradicional" class="imagem-direita">
<p>
  A dança é uma linguagem universal que une tradição e modernidade...
</p>
```

### Problemas do Float

Float é útil, mas tem limitações:

- afeta elementos que vêm depois;
- pode não funcionar bem em layouts complexos;
- é mais trabalhoso de controlar.

## O que é Display

A propriedade `display` controla como um elemento se comporta no fluxo da página.

### Display: block

Um elemento `block` ocupa a linha toda e força a quebra.

```css
div {
  display: block;
}
```

Exemplos: `<div>`, `<p>`, `<h1>`, `<section>`.

Exemplo prático:

```html
<section class="programacao-block">
  <p class="bloco">Abertura - 8h</p>
  <p class="bloco">Oficina de Dança - 10h</p>
  <p class="bloco">Show Musical - 14h</p>
</section>
```

```css
.programacao-block .bloco {
  display: block;
  padding: 8px;
  margin-bottom: 6px;
  border: 1px solid #999;
}
```

Como cada item é `block`, eles aparecem um embaixo do outro.

### Display: inline

Um elemento `inline` ocupa apenas o espaço que precisa e não força quebra.

```css
span {
  display: inline;
}
```

Exemplos: `<span>`, `<a>`, `<strong>`.

Exemplo prático:

```html
<p>
  <span class="tag">Música</span>
  <span class="tag">Teatro</span>
  <span class="tag">Dança</span>
</p>
```

```css
.tag {
  display: inline;
  background-color: #ffe8a3;
  border: 1px solid #d4a017;
  padding: 4px;
}
```

Como os elementos são `inline`, eles ficam na mesma linha enquanto houver espaço.

### Display: inline-block

Combina comportamentos de `inline` (não quebra) e `block` (respeita width e height).

```css
.card {
  display: inline-block;
  width: 200px;
  margin: 10px;
}
```

Útil para criar layouts com cards lado a lado.

Exemplo prático com três cards:

```html
<section class="cards-evento">
  <article class="card">Música</article>
  <article class="card">Dança</article>
  <article class="card">Teatro</article>
</section>
```

```css
.cards-evento .card {
  display: inline-block;
  width: 180px;
  padding: 12px;
  margin-right: 10px;
  border: 2px solid #333;
}
```

### Display: none

`display: none` esconde totalmente o elemento da página.

```css
.aviso-temporario {
  display: none;
}
```

Use quando um bloco deve existir no HTML, mas não precisa aparecer naquele momento.

### Display: list-item (extra)

Permite que um elemento se comporte como item de lista, exibindo marcador.

```css
.item-programacao {
  display: list-item;
  margin-left: 20px;
}
```

Pode ser útil para transformar blocos simples em uma lista visual rápida.

## Quando Usar Float e Display

| Situação | Melhor escolha | Motivo |
|---|---|---|
| Envolver texto ao redor de uma imagem | Float | Comportamento natural para esse fim |
| Manter elementos em linhas separadas | Display block | Organização vertical clara |
| Colocar blocos lado a lado de forma simples | Display inline-block | Não quebra linha e aceita largura/altura |
| Esconder temporariamente um bloco | Display none | Remove o elemento da renderização |

## Exemplo Prático: Imagem ao Lado de Texto

### Com Float

```css
.secao-float {
  margin: 20px 0;
  overflow: auto;
}

.secao-float img {
  float: left;
  width: 300px;
  margin-right: 20px;
  border-radius: 8px;
}

.secao-float h2 {
  margin-top: 0;
}
```

```html
<section class="secao-float">
  <img src="atracao-principal.jpg" alt="Atração principal do festival">
  <h2>Atração Principal</h2>
  <p>
    Este ano, contamos com a presença de artistas renomados...
  </p>
</section>
```

### Com Display inline-block

```css
.secao-inline-block {
  margin: 20px 0;
  font-size: 0;
}

.secao-inline-block img,
.secao-inline-block .texto {
  display: inline-block;
  vertical-align: top;
  font-size: 16px;
}

.secao-inline-block img {
  width: 40%;
  margin-right: 3%;
  border-radius: 8px;
}

.secao-inline-block .texto {
  width: 57%;
}
```

```html
<section class="secao-inline-block">
  <img src="danca.jpg" alt="Apresentação de dança no festival">
  <div class="texto">
    <h2>Mostra de Dança</h2>
    <p>
      As apresentações unem ritmos modernos e tradicionais em uma programação diversa.
    </p>
  </div>
</section>
```

Com essa abordagem:

- a imagem fica à esquerda;
- o texto aparece ao lado com largura controlada;
- `vertical-align: top` mantém o alinhamento pelo topo;

## Boas Práticas

- use float apenas se precisar envolver texto;
- use `inline-block` quando precisar de blocos lado a lado sem sair do conteúdo desta aula;
- teste o layout em diferentes tamanhos de tela;
- defina larguras coerentes para evitar que texto e imagem se sobreponham;
- use `display: none` com critério para não esconder conteúdos importantes sem necessidade.

## Erros Comuns

- aplicar float sem adicionar margin para separar a imagem do texto;
- misturar `inline` e `block` sem entender a diferença de quebra de linha;
- não especificar largura na imagem flutuante, deixando ela muito grande;
- esquecer de testar em mobile, onde layouts lado a lado podem quebrar.
