# O Modelo de Caixa (Box Model)

Agora que sua página já tem estrutura, cores e tipografia, falta organizar melhor o espaço de cada elemento.
É aqui que entra o Box Model, um conceito central do CSS.

## Objetivos da Aula

- Entender como funciona o Box Model.
- Diferenciar `margin`, `padding` e `border`.
- Visualizar cada parte da caixa com cores vivas.
- Melhorar a apresentação do projeto construído nas aulas anteriores.

## O que é o Box Model

No CSS, quase todo elemento pode ser entendido como uma caixa.
Essa caixa é formada por partes diferentes:

- conteúdo;
- preenchimento interno (`padding`);
- borda (`border`);
- espaço externo (`margin`).

Quando você domina essas partes, consegue organizar melhor blocos, cartões, banners e seções da página.

## Entendendo cada parte

### `padding`

É o espaço entre o conteúdo e a borda.
Ele aumenta a área interna do elemento.

```css
.card {
  padding: 20px;
}
```

### `border`

É a linha que envolve o elemento.
Você pode mudar espessura, tipo e cor.

```css
.card {
  border: 4px solid #ff5a36;
}
```

### `margin`

É o espaço do lado de fora da borda.
Serve para afastar um elemento do outro.

```css
.card {
  margin: 24px;
}
```

## Exemplo com cores vivas

Use cores diferentes para enxergar melhor cada parte da caixa.

```html
<style>
  .box-exemplo {
    background-color: #ffe66d;
    padding: 20px;
    border: 6px solid #ff006e;
    margin: 24px;
  }
</style>

<div class="box-exemplo">
  Este bloco mostra conteúdo, espaço interno, borda e espaço externo.
</div>
```

Nesse exemplo:

- o fundo amarelo destaca a área do conteúdo;
- a borda rosa mostra o limite do elemento;
- o espaço interno dá respiro ao texto;
- a margem separa o bloco dos outros elementos da página.

??? tip "Dica"
    Se vários elementos estiverem muito colados, o problema normalmente está na falta de `margin` ou `padding`.
    Antes de mudar tudo, identifique qual espaço você quer aumentar: o de dentro ou o de fora.

## Aplicando no projeto anterior

Você pode transformar seções simples em blocos mais organizados.

```css
section {
  background-color: #ffffff;
  padding: 18px;
  border: 3px solid #118ab2;
  margin-bottom: 16px;
}

figure {
  padding: 12px;
  border: 3px dashed #ef476f;
}
```

Com poucos ajustes, a página passa a ter separação visual mais clara.

## Erros comuns ao usar o Box Model

- usar `margin` quando queria afastar o texto da borda;
- exagerar na espessura da borda e prejudicar a leitura;
- aplicar muitos espaçamentos diferentes sem padrão;
- esquecer de testar o resultado em mais de um tamanho de tela.
