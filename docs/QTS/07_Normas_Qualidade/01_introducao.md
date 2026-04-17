# Definindo Qualidade em QTS

Nesta aula, vamos transformar a ideia de “software bom” em algo técnico, mensurável e aplicável no dia a dia de desenvolvimento.

---

## Slides

<div style="position: relative; width: 100%; height: 0; padding-top: 56.2500%;
 padding-bottom: 0; box-shadow: 0 2px 8px 0 rgba(63,69,81,0.16); margin-top: 1.6em; margin-bottom: 0.9em; overflow: hidden;
 border-radius: 8px; will-change: transform;">
  <iframe loading="lazy" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0;margin: 0;"
    src="https://www.canva.com/design/DAHGBsPxhbQ/9pDV0VT5mjAP8Z0D-M4S_A/view?embed" allowfullscreen="allowfullscreen" allow="fullscreen">
  </iframe>
</div>
<a href="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAHGBsPxhbQ&#x2F;9pDV0VT5mjAP8Z0D-M4S_A&#x2F;view?utm_content=DAHGBsPxhbQ&amp;utm_campaign=designshare&amp;utm_medium=embeds&amp;utm_source=link" target="_blank" rel="noopener">03-04</a> de Icaro Davies

## Objetivos da aula

- Entender o papel das normas de qualidade em projetos de software.
- Diferenciar qualidade de produto e qualidade de processo.
- Relacionar CMMI e MPS.BR com evolução de maturidade.
- Reconhecer como a ISO/IEC/IEEE 12207 organiza o ciclo de vida do software.

---

## Normas de qualidade na prática

As normas ajudam equipes a trabalhar com critérios claros, linguagem comum e foco em melhoria contínua.

- **ISO 9000**: orienta o sistema de gestão da qualidade na organização.
- **ISO/IEC 25010**: descreve características de qualidade do produto de software.
- **ISO/IEC/IEEE 12207**: organiza processos do ciclo de vida de software.

??? tip "Leitura rápida"
    Norma não serve para burocratizar. Serve para reduzir retrabalho, dar previsibilidade e melhorar comunicação técnica.

---

## Qualidade de produto e qualidade de processo

**Qualidade de produto** responde: o software atende bem o usuário?

Exemplos avaliados na ISO/IEC 25010:

- adequação funcional;
- confiabilidade;
- usabilidade;
- eficiência de desempenho;
- manutenibilidade;
- segurança.

**Qualidade de processo** responde: como a equipe desenvolve e mantém esse software?

Quando o processo é definido, o time ganha:

- mais controle sobre prazos e mudanças;
- rastreabilidade das decisões;
- repetibilidade de boas práticas;
- menos defeitos chegando em produção.

---

## Modelos de maturidade

Normas definem o que precisa existir. Modelos de maturidade mostram como evoluir.

### CMMI

| Nível | Característica principal |
| --- | --- |
| 1 - Inicial | Processo imprevisível e reativo. |
| 2 - Gerenciado | Projeto planejado e acompanhado. |
| 3 - Definido | Processo padronizado na organização. |
| 4 - Quantitativamente gerenciado | Decisões guiadas por métricas. |
| 5 - Otimizado | Melhoria contínua baseada em dados. |

### MPS.BR

O MPS.BR é um modelo brasileiro alinhado a referências internacionais, com foco em evolução gradual de processos.

- Nível G: parcialmente gerenciado.
- Evolução progressiva até o nível A: em otimização.

---

## ISO/IEC/IEEE 12207 no ciclo de vida

A ISO 12207 organiza processos em grupos que cobrem o projeto do início à manutenção.

### Processos de acordo

- aquisição;
- fornecimento.

### Processos organizacionais

- gestão da organização;
- infraestrutura;
- capacitação;
- melhoria contínua.

### Processos de gerenciamento

- planejamento e monitoramento;
- gestão de riscos;
- gerenciamento de configuração.

### Processos técnicos

- análise de requisitos;
- projeto de arquitetura;
- implementação;
- testes;
- manutenção.

??? tip "Conexão com a disciplina"
    Quando você usa README claro, branch por tarefa e commit padronizado, está aplicando práticas de gerenciamento e rastreabilidade alinhadas à ISO 12207.

---

## Exemplo de aplicação em sala

Em um projeto simples, a turma pode registrar evidências de processo assim:

- `docs`: atualização da documentação técnica.
- `feat`: implementação de funcionalidade.
- `fix`: correção de defeito identificado em teste.

Esse histórico melhora auditoria, revisão e manutenção do código.

## Quiz de revisão

> Responda às questões para fixar os conceitos de qualidade de software, processo e produto.

<quiz>
Qual é a função principal da ISO/IEC 25010 em QTS?

* [ ] Definir o orçamento do projeto de software.
* [x] Definir características para avaliar a qualidade do produto de software.
* [ ] Substituir completamente os testes automatizados.
</quiz>

<quiz>
Ao falar de qualidade de processo, estamos focando principalmente em:

* [ ] Linguagem de programação escolhida.
* [x] Como o trabalho é planejado, executado, monitorado e melhorado.
* [ ] Apenas velocidade de execução da aplicação.
</quiz>

<quiz>
No CMMI, o nível 2 (Gerenciado) indica que:

* [ ] Não existe planejamento formal.
* [x] O projeto é planejado e acompanhado conforme o plano.
* [ ] O processo já está em otimização contínua.
</quiz>

<quiz>
No MPS.BR, a evolução de maturidade ocorre:

* [ ] Somente em dois níveis fixos.
* [x] De forma progressiva, do nível G até o nível A.
* [ ] Apenas quando a empresa troca de tecnologia.
</quiz>

<quiz>
Na ISO/IEC/IEEE 12207, gerenciamento de configuração está associado a:

* [ ] Processos técnicos apenas.
* [x] Processos de gerenciamento.
* [ ] Processos de acordo apenas.
</quiz>

<quiz>
Qual alternativa representa um processo técnico da ISO 12207?

* [ ] Definição de política organizacional.
* [x] Teste de software.
* [ ] Auditoria financeira da empresa.
</quiz>

<quiz>
Qual prática reforça melhor a rastreabilidade em projetos?

* [ ] Alterar código direto no principal sem histórico.
* [x] Usar commits claros e padronizados por tipo de mudança.
* [ ] Evitar documentação para ganhar velocidade.
</quiz>

<quiz>
Qual relação está correta entre processo e produto?

* [ ] Processo e produto não se influenciam.
* [x] Melhorar o processo aumenta a chance de entregar produto com mais qualidade.
* [ ] Produto de qualidade depende apenas do programador mais experiente.
</quiz>

<!-- mkdocs-quiz results -->
