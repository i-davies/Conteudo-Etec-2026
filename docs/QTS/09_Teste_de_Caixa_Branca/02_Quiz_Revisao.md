# Quiz de Revisão: Teste de Caixa Branca

Revise os conceitos principais sobre cobertura de decisões em funções Python.

---

<quiz>
No teste de caixa branca, o foco principal é:

* [ ] Testar apenas interface gráfica
* [x] Validar a lógica interna e os caminhos do código
* [ ] Evitar completamente o uso de `pytest`
* [ ] Testar só cenários com dados reais de produção
</quiz>

<quiz>
Qual é o padrão de pasta mais claro para organizar testes no projeto da turma?

* [ ] Colocar todos os testes ao lado do arquivo principal, sem pasta própria
* [x] Usar uma pasta `tests/` separada e, se quiser, dividir por domínio
* [ ] Misturar testes dentro da pasta `docs/`
* [ ] Nomear todos os arquivos de teste com extensão `.txt`
</quiz>

<quiz>
Antes de fazer os incrementos desta aula, a branch sugerida é:

* [ ] `main`
* [x] `feature/teste-caixa-branca`
* [ ] `release/producao`
* [ ] `hotfix/pytest`
</quiz>

<quiz>
Para cobrir uma função com `if/elif/else`, o ideal é:

* [ ] Criar um único teste genérico
* [x] Criar casos que passem por cada ramo de decisão
* [ ] Testar somente o caminho mais comum
* [ ] Alterar a função para remover condições
</quiz>

<quiz>
Em uma função que retorna `aprovado`, `recuperacao` e `reprovado`, qual conjunto é mais adequado?

* [ ] Testar apenas `aprovado`
* [ ] Testar `aprovado` e `reprovado`
* [x] Testar os três retornos e também entradas inválidas, se existirem
* [ ] Testar só valores aleatórios sem critério
</quiz>

<quiz>
No fluxo da disciplina com UV, qual comando executa os testes?

* [ ] `uv add pytest`
* [x] `uv run pytest -v`
* [ ] `pytest uv run`
* [ ] `uv test`
</quiz>

<quiz>
Um exemplo de valor de borda para a regra `if nota >= 7` é:

* [ ] `nota = 100`
* [ ] `nota = -2`
* [x] `nota = 7`
* [ ] `nota = 1`
</quiz>

<!-- mkdocs-quiz results -->
