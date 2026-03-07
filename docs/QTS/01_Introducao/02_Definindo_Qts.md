# Definindo Qualidade em QTS

Nesta aula, vamos transformar a ideia de “software bom” em algo técnico, mensurável e aplicável no dia a dia de desenvolvimento.

---

## Slides

<div style="position: relative; width: 100%; height: 0; padding-top: 56.2500%;
 padding-bottom: 0; box-shadow: 0 2px 8px 0 rgba(63,69,81,0.16); margin-top: 1.6em; margin-bottom: 0.9em; overflow: hidden;
 border-radius: 8px; will-change: transform;">
  <iframe loading="lazy" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0;margin: 0;"
    src="https://www.canva.com/design/DAHCvyGOrdw/4jjYyXdE-8DwG1Du31EHBw/view?embed" allowfullscreen="allowfullscreen" allow="fullscreen">
  </iframe>
</div>
<a href="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAHCvyGOrdw&#x2F;4jjYyXdE-8DwG1Du31EHBw&#x2F;view?utm_content=DAHCvyGOrdw&amp;utm_campaign=designshare&amp;utm_medium=embeds&amp;utm_source=link" target="_blank" rel="noopener">01-02</a> de Icaro Davies

## Qualidade de Software (ISO/IEC 25000)

!!! info "Objetivos"
    - Entender o que é qualidade de software segundo normas internacionais.
    - Diferenciar qualidade de produto e qualidade de processo.
    - Relacionar boas práticas com redução de falhas em software.

!!! abstract "Conceitos-chave"
    - **ISO/IEC 25000 (SQuaRE)** define qualidade como a capacidade do software de atender necessidades declaradas e implícitas sob condições específicas de uso.
    - **ISO** e **IEC** são os organismos que consolidam padrões para garantir linguagem técnica comum na indústria.

> "Capacidade de um produto de software em satisfazer necessidades declaradas e implícitas quando usado sob condições especificadas".

---

## Qualidade de Produto: 9 dimensões

Quando avaliamos a qualidade do produto final, analisamos as seguintes características:

1. **Adequação funcional**: entrega as funções corretas para o usuário.
2. **Confiabilidade**: mantém comportamento estável mesmo com falhas e variações.
3. **Usabilidade**: é fácil de aprender, entender e operar.
4. **Eficiência de desempenho**: usa bem recursos como CPU, memória e tempo de resposta.
5. **Manutenibilidade**: facilita correções e evolução do código.
6. **Portabilidade**: adapta-se a diferentes ambientes (SO, hardware, nuvem).
7. **Segurança**: protege dados, acesso e integridade das informações.
8. **Compatibilidade**: integra e convive com outros sistemas.
9. **Salvaguarda (Safety)**: minimiza riscos de danos a pessoas e ambiente.

??? tip "Leitura rápida"
    Produto de qualidade não é apenas “sem bug”: também precisa ser seguro, utilizável e sustentável ao longo do tempo.

---

## Qualidade de Processo: como construir com previsibilidade

Qualidade não nasce no final do projeto. Ela é consequência de um processo disciplinado.

| Característica | Impacto no projeto |
| --- | --- |
| **Previsibilidade** | As etapas, prazos e entregas ficam claros para o time. |
| **Controle** | É possível corrigir desvios antes de virar retrabalho grande. |
| **Rastreabilidade** | Cada decisão e falha tem origem identificável. |
| **Repetibilidade** | Boas práticas podem ser reaplicadas em novos projetos. |

**Comparação prática:**

- **Processo fraco:** codar sem planejamento, sem padrão e sem validação contínua.
- **Processo forte:** definir requisitos, implementar com padrão, testar e revisar continuamente.

---

## Exemplo prático com Python

```python
def calcular_media(notas):
    """Calcula a média de uma lista de notas."""

    if not notas:
        return 0

    return sum(notas) / len(notas)


notas_aluno = [8, 7, 9]
print(calcular_media(notas_aluno))  # 8.0
```

### Como a qualidade aparece nesse código?

- **Confiabilidade:** evita divisão por zero ao validar lista vazia.
- **Manutenibilidade:** função pequena, com responsabilidade única.
- **Portabilidade:** código simples, sem dependência de plataforma.

### Testes automatizados esperados

Para validar requisitos de qualidade, cobrimos ao menos:

- Entrada padrão com inteiros.
- Entrada com números decimais.
- Lista vazia.
- Entrada inválida (tipo incorreto).

---

## Processo e produto: relação direta

Processo de qualidade aumenta a qualidade do produto final:

- **Requisitos claros** → software mais aderente ao problema real.
- **Testes amplos** → menos falhas em produção.
- **Melhoria contínua** → evolução constante da solução.

Fluxo recomendado em QTS:

**Definir requisitos** → **Projetar solução** → **Implementar** → **Testar** → **Implantar e manter**.

---

## Quiz de revisão

> Responda às questões para fixar os conceitos de qualidade de software, processo e produto.

<quiz>
Segundo a ISO/IEC 25000, qualidade de software é:

* [ ] A beleza visual da interface independentemente de requisitos.
* [x] A capacidade de atender necessidades declaradas e implícitas em condições específicas.
* [ ] Apenas a velocidade de execução do sistema.
</quiz>

<quiz>
Qual opção representa uma característica de qualidade de produto?

* [ ] Repetibilidade do processo de desenvolvimento.
* [x] Usabilidade.
* [ ] Planejamento de sprint.
</quiz>

<quiz>
Quando falamos em confiabilidade, estamos avaliando se o sistema:

* [ ] Tem o menor número de linhas de código possível.
* [x] Mantém funcionamento adequado mesmo em condições adversas.
* [ ] Utiliza somente linguagem Python.
</quiz>

<quiz>
A manutenibilidade está relacionada principalmente a:

* [ ] Rodar em vários sistemas operacionais sem ajustes.
* [ ] Impedir qualquer alteração no código.
* [x] Facilidade de corrigir defeitos e evoluir funcionalidades.
</quiz>

<quiz>
Qual alternativa descreve melhor a qualidade de processo?

* [ ] Só importa o resultado final; o caminho não interfere.
* [x] Um processo definido melhora previsibilidade, controle e rastreabilidade.
* [ ] Processo de qualidade significa programar mais rápido que os concorrentes.
</quiz>

<quiz>
No exemplo da função `calcular_media`, o tratamento de lista vazia reforça:

* [ ] Compatibilidade.
* [x] Confiabilidade.
* [ ] Portabilidade.
</quiz>

<quiz>
Qual prática contribui diretamente para reduzir bugs em produção?

* [x] Criar testes abrangentes para diferentes cenários.
* [ ] Evitar qualquer refatoração.
* [ ] Deixar validações apenas para o usuário final.
</quiz>

<quiz>
A relação correta entre processo e produto é:

* [ ] São independentes: melhorar processo não afeta o produto.
* [ ] Produto bom depende apenas de um desenvolvedor experiente.
* [x] Processos de qualidade aumentam as chances de um produto confiável e útil.
</quiz>

<!-- mkdocs-quiz results -->
