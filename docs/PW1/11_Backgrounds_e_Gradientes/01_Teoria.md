# Backgrounds e Gradientes: Criando Banners Visuais

Até aqui, sua página tem estrutura organizada, tipografia bem definida e espaçamento claro.
Agora é hora de dar vida visual aos elementos usando backgrounds e gradientes.

## Objetivos da Aula

- Entender as propriedades de background em CSS.
- Aprender a criar gradientes lineares e radiais.
- Aplicar backgrounds em banners e seções.
- Melhorar a identidade visual do projeto Festival Cultural.

## O que é Background em CSS

Background é o preenchimento de fundo de um elemento.
Ele pode ser:

- uma cor sólida;
- uma imagem;
- um gradiente (transição suave entre cores).

O background muda completamente a aparência da página.
Um banner com fundo adequado se destaca muito mais e atrai atenção.

## Cores Sólidas como Background

A forma mais simples é usar uma cor sólida.

```css
.banner {
  background-color: #2d6a4f;
  padding: 40px;
  color: white;
}
```

## Gradientes Lineares

Um gradiente linear cria uma transição suave entre duas ou mais cores em uma direção.

A sintaxe básica é:

```css
background: linear-gradient(direcao, cor1, cor2);
```

Exemplos:

```css
.banner {
  background: linear-gradient(to right, #ff006e, #fb5607);
  padding: 40px;
  color: white;
}
```

Neste exemplo:

- a cor começa rosa (`#ff006e`) à esquerda;
- e muda para laranja (`#fb5607`) à direita.

### Variações de Direção

Você pode especificar a direção do gradiente:

```css
/* De cima para baixo (padrão) */
background: linear-gradient(to bottom, #667bc6, #da70d6);

/* Da esquerda para direita */
background: linear-gradient(to right, #667bc6, #da70d6);

/* Na diagonal */
background: linear-gradient(135deg, #667bc6, #da70d6);

/* Ângulo exato */
background: linear-gradient(45deg, #667bc6, #da70d6);
```

### Múltiplas Cores

Você pode adicionar quantas cores quiser:

```css
.arco-iris {
  background: linear-gradient(
    to right,
    red,
    yellow,
    green,
    blue,
    purple
  );
}
```

## Gradientes Radiais

Um gradiente radial cria uma transição que irradia a partir do centro.

```css
.circulo {
  background: radial-gradient(circle, #ffde00, #ff006e);
  border-radius: 50%;
  width: 200px;
  height: 200px;
}
```

Você pode controlar a forma (círculo ou elipse) e a posição:

```css
.spotlight {
  background: radial-gradient(circle at 30% 40%, #ffde00, #222);
  padding: 40px;
}
```

## Combinando Gradientes com Imagens

Você pode sobrepor uma cor ou gradiente a uma imagem:

```css
.hero {
  background-image: 
    linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
    url('imagem-festival.jpg');
  background-size: cover;
  background-position: center;
  padding: 60px;
  color: white;
}
```

Aqui:

- `rgba(0, 0, 0, 0.5)` cria uma máscara escura com transparência;
- `url('imagem-festival.jpg')` define a imagem de fundo;
- `background-size: cover` faz a imagem cobrir todo o espaço;
- `background-position: center` centraliza a imagem.

??? tip "Dica"
    Ao colocar texto sobre uma imagem de fundo, sempre use uma camada de cor ou gradiente semi-transparente para melhorar a legibilidade.

## Aplicando em Banners do Festival Cultural

Um banner bem-feito é o primeiro contato do visitante com a página.

```css
.banner-principal {
  background: linear-gradient(135deg, #d62828, #f77f00);
  padding: 80px 20px;
  text-align: center;
  color: white;
}

.banner-principal h1 {
  font-size: 48px;
  margin: 0;
  font-family: 'Montserrat', sans-serif;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
}

.banner-principal p {
  font-size: 20px;
  margin-top: 10px;
  font-family: 'Roboto', sans-serif;
}
```

E no HTML:

```html
<header class="banner-principal">
  <h1>Festival Cultural da Escola</h1>
  <p>Um encontro de artes, talentos e criatividade</p>
</header>
```

## Boas Práticas com Backgrounds

- use gradientes com no máximo 3 cores para não sobrecarregar;
- garanta contraste suficiente entre texto e background;
- teste o background em diferentes tamanhos de tela;
- evite gradientes muito chamativos que prejudiquem a leitura;
- combine backgrounds com padding para dar respiro ao conteúdo.

??? tip "Gradientes Inspiradores"
    Existem geradores online como o coolGradient (coolgradient.io) que ajudam a criar gradientes bonitos e pegar o código pronto.

## Erros Comuns

- usar gradientes com cores muito similares, resultando em efeito fraco;
- aplicar texto muito claro ou muito escuro sobre um gradiente sem contraste;
- fazer um banner tão colorido que desvia atenção do conteúdo;
- esquecer de ajustar `padding` quando muda o fundo, deixando o texto colado.
