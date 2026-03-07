# Exercícios de Fixação

Esta aula final é para revisar os conteúdos de **UV**, fundamentos de Python, funções e classes.

---

## Quiz de revisão

<quiz>
Qual comando verifica a versão instalada do UV?

* [x] `uv -V`
* [ ] `uv --python`
* [ ] `python uv -V`
</quiz>

<quiz>
Qual comando cria a estrutura inicial de um projeto com UV?

* [ ] `uv sync`
* [x] `uv init`
* [ ] `uv lock`
</quiz>

<quiz>
Conforme o padrão adotado nesta disciplina, qual comando usamos para adicionar o FastAPI como dependência do projeto?

* [ ] `uv pip install fastapi[standard]`
* [x] `uv add "fastapi[standard]"`
* [ ] `uv sync fastapi[standard]`
</quiz>

<quiz>
Qual comando executa algo dentro do ambiente do projeto sem ativar manualmente o venv?

* [ ] `uv lock`
* [x] `uv run`
* [ ] `uv pip list`
</quiz>

<quiz>
No Python, qual estrutura representa pares `chave: valor`?

* [ ] Lista
* [x] Dicionário
* [ ] Tupla
</quiz>

<quiz>
Qual alternativa descreve corretamente uma tupla?

* [ ] Mutável, permite `append()`
* [x] Imutável, definida com `()`
* [ ] Só aceita números
</quiz>

<quiz>
Em uma função Python, o `return` serve para:

* [ ] Encerrar o programa inteiro
* [x] Devolver um valor
* [ ] Criar uma variável global
</quiz>

<quiz>
Em classes Python, o método chamado automaticamente na criação do objeto é:

* [x] `__init__`
* [ ] `__start__`
* [ ] `__new_object__`
</quiz>

<quiz>
No contexto de orientação a objetos, `self` representa:

* [x] O próprio objeto atual
* [ ] Uma variável global
* [ ] O nome da classe em texto
</quiz>

<quiz>
Qual arquivo guarda versões exatas das dependências no UV?

* [ ] `.python-version`
* [ ] `requirements.txt`
* [x] `uv.lock`
</quiz>


<!-- mkdocs-quiz results -->
