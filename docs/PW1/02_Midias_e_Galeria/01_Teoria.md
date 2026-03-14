# Midias: Imagens e Figuras

Nesta etapa vamos aprender a inserir imagens em uma pagina HTML de forma organizada e acessivel.

## Objetivos da Aula

- Entender quando uma imagem agrega informacao.
- Usar a tag `<img>` com atributos essenciais.
- Organizar imagem e legenda com `<figure>` e `<figcaption>`.

## A Tag `<img>`

A tag `<img>` e usada para mostrar imagens na pagina.

```html
<img src="imagens/logo.png" alt="Logo da escola" width="220" height="220">
```

Campos mais importantes:

- `src`: caminho da imagem.
- `alt`: descricao da imagem para acessibilidade e casos de erro de carregamento.
- `width` e `height`: tamanho exibido.

??? tip "Dica"
	Sempre preencha o `alt` com um texto curto e objetivo. Isso melhora acessibilidade e ajuda em mecanismos de busca.

## Figura com Legenda

Quando for importante mostrar um contexto para a imagem, use `<figure>` e `<figcaption>`.

```html
<figure>
	<img src="imagens/laboratorio.jpg" alt="Laboratorio de informatica">
	<figcaption>Laboratorio de informatica da turma DS.</figcaption>
</figure>
```

## Exercicio de Fixacao

Crie o arquivo `PW1/04_aula/midias_base.html` com:

- tres imagens sobre um tema livre;
- `alt` em todas as imagens;
- pelo menos uma imagem dentro de `<figure>` com `<figcaption>`.
