# DIVs e Tabelas no HTML

As `div` sao blocos genericos usados para separar e organizar partes da pagina, como topo, conteudo e rodape.
As tabelas servem para exibir dados em linhas e colunas, facilitando a leitura de informacoes como horarios, listas e comparacoes.

## Objetivos da Aula

- Entender como usar `div` para separar blocos da pagina.
- Usar `class` e `id` para identificar partes do layout.
- Criar tabelas com dados de forma organizada.

## Organizando Conteudo com `div`

```html
<div id="topo">
  <h1>Minha Pagina</h1>
</div>

<div class="bloco-conteudo">
  <h2>Sobre</h2>
  <p>Texto de apresentacao.</p>
</div>
```

Campos importantes:

- `id`: identificador unico para um bloco.
- `class`: nome de grupo para estilizar varios blocos iguais.

??? tip "Dica"
    Comece separando a pagina em blocos com `div` e depois preencha cada bloco com conteudo.

## Tabela Simples

Uma tabela em HTML funciona como uma grade.
Cada parte tem uma funcao:

- `table`: abre e fecha a tabela inteira.
- `tr` (table row): cria uma linha da tabela.
- `th` (table header): cria celulas de cabecalho, normalmente com o titulo das colunas.
- `td` (table data): cria celulas com os dados da tabela.

Lendo de cima para baixo:

- primeira linha com `th` define os titulos;
- linhas seguintes com `td` trazem os valores.

```html
<table>
  <tr>
    <th>Horario</th>
    <th>Disciplina</th>
  </tr>
  <tr>
    <td>07:30</td>
    <td>PW1</td>
  </tr>
</table>
```

## Exercicio de Fixacao

Crie o arquivo `PW1/05_aula/divs_tabelas/base.html` com:

- um bloco de topo usando `div`;
- dois blocos de conteudo com `class`;
- uma tabela simples com cabecalho e pelo menos tres linhas de dados.
