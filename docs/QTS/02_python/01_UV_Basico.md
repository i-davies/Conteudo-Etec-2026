# UV Básico para Projetos Python

Nesta aula, vamos aprender o essencial do **UV** para começar projetos Python com ambiente virtual e dependências organizadas.

---

## O que é UV?

O **UV** é uma ferramenta moderna para:

- criar ambiente virtual;
- instalar pacotes;
- executar comandos no ambiente do projeto;
- manter versões consistentes com `uv.lock`.

Em resumo: ele junta tarefas que normalmente faríamos com `pip`, `venv` e outros utilitários.

---

## Pré-requisitos

- Python instalado;
- UV instalado;
- VS Code (recomendado).

---

## Passo a passo mínimo

### 1) Verificar se o UV está instalado

```bash
uv -V
```

### 2) Criar projeto Python

```bash
uv init
```

Isso cria os arquivos iniciais, como `pyproject.toml`.

### 3) Adicionar uma dependência

```bash
uv add "fastapi[standard]"
```

### 4) Executar um comando no ambiente

```bash
uv run python -V
```

Você não precisa ativar o ambiente manualmente para usar `uv run`.

### 5) Sincronizar dependências

```bash
uv sync
```

Útil quando você clona um projeto que já possui `pyproject.toml` e `uv.lock`.

---

## Arquivos importantes

- `pyproject.toml`: define dependências e configurações do projeto;
- `uv.lock`: fixa versões para o ambiente ser reproduzível;
- `.venv/`: ambiente virtual local (não versionar no git).

---

## Boas práticas

- Use `uv add` para dependências do projeto;
- Use `uv run` para rodar scripts e comandos;
- Versione `pyproject.toml` e `uv.lock`;
- Não versione `.venv/`.

!!! tip "Resumo da aula"
    Com UV, você cria, instala e executa seu projeto Python com menos passos e mais organização.
