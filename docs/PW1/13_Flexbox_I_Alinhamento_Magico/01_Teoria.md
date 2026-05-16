# Flexbox I: O Alinhamento Mágico

Até aqui, você já organizou elementos com `float` e `display`.
Agora vamos aprender uma forma mais moderna e poderosa de alinhar itens: o Flexbox.

Com ele, centralizar conteúdo na horizontal e na vertical deixa de ser um problema.

## Objetivos da Aula

- Entender o que é um container flexível.
- Usar `display: flex` para alinhar elementos com mais controle.
- Centralizar elementos horizontalmente com `justify-content`.
- Centralizar elementos verticalmente com `align-items`.
- Aplicar centralização completa em um bloco visual.

## O que é Flexbox

Flexbox é um modelo de layout do CSS feito para organizar elementos em uma dimensão (linha ou coluna).

Quando você define:

```css
.container {
  display: flex;
}
```

os filhos desse container passam a ser itens flexíveis.

## Alinhamento Horizontal com justify-content

A propriedade `justify-content` organiza os itens no eixo principal.

Se o container estiver em linha (padrão), esse eixo é horizontal.

```css
.container {
  display: flex;
  justify-content: center;
}
```

Com `center`, os itens ficam centralizados no meio da largura disponível.

Outros valores úteis:

- `flex-start`: início;
- `flex-end`: final;
- `space-between`: espaço entre os itens;
- `space-around`: espaço ao redor dos itens;
- `space-evenly`: espaçamento uniforme.

## Alinhamento Vertical com align-items

A propriedade `align-items` organiza os itens no eixo cruzado.

Em um container em linha, o eixo cruzado é vertical.

```css
.container {
  display: flex;
  align-items: center;
}
```

Assim, os itens ficam centralizados na altura do container.

## Centralização Completa: Horizontal e Vertical

Para centralizar totalmente um elemento dentro de uma área:

```css
.caixa-central {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 300px;
  border: 2px dashed #333;
}
```

No HTML:

```html
<section class="caixa-central">
  <div class="cartao">Festival Cultural 2026</div>
</section>
```

Com esse conjunto, o cartão fica no centro exato da caixa.

??? tip "Dica"
    Se a centralização vertical não funcionar, verifique se o container tem altura definida (`height` ou `min-height`).

## Exemplo Prático: Cartaz Centralizado

```html
<style>
  .palco {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 260px;
    background: linear-gradient(135deg, #264653, #2a9d8f);
    border-radius: 12px;
    color: #ffffff;
    text-align: center;
    padding: 20px;
  }

  .palco .cartaz {
    background-color: rgba(0, 0, 0, 0.25);
    border: 2px solid #e9c46a;
    border-radius: 10px;
    padding: 18px 24px;
    font-size: 22px;
    font-weight: bold;
  }
</style>

<section class="palco">
  <div class="cartaz">Abertura Oficial - 19h</div>
</section>
```

## Boas Práticas

- aplique `display: flex` no elemento pai, não no filho que você quer mover;
- combine `justify-content` e `align-items` para centralização total;
- defina altura no container quando precisar alinhar verticalmente;
- use Flexbox para componentes, cards e áreas de destaque.

## Erros Comuns

- tentar usar `justify-content` sem `display: flex`;
- confundir eixo horizontal com eixo vertical;
- esquecer de definir altura no container para centralização vertical;
- usar margens aleatórias em vez de alinhar com as propriedades do Flexbox.

## Exercício de Fixação

Monte um bloco chamado `banner-boas-vindas` com as regras abaixo:

- largura total da página;
- altura mínima de 220px;
- texto centralizado na horizontal e vertical;
- fundo com gradiente linear;
- um botão centralizado abaixo do título.

??? example "Sugestão de estrutura"
    ```html
    <section class="banner-boas-vindas">
      <div>
        <h2>Bem-vindos ao Festival Cultural</h2>
        <a href="#programacao">Ver programação</a>
      </div>
    </section>
    ```

    ```css
    .banner-boas-vindas {
      /* aplique flexbox para centralizar */
    }
    ```
