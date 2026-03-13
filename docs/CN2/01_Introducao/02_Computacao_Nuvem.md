# Introducao a Computacao em Nuvem

---

## Slides

<div style="position: relative; width: 100%; height: 0; padding-top: 56.2500%;
 padding-bottom: 0; box-shadow: 0 2px 8px 0 rgba(63,69,81,0.16); margin-top: 1.6em; margin-bottom: 0.9em; overflow: hidden;
 border-radius: 8px; will-change: transform;">
  <iframe loading="lazy" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0;margin: 0;"
    src="https://www.canva.com/design/DAHChjLuykQ/tFrEsLIHVqGAoKLoDlD71g/view?embed" allowfullscreen="allowfullscreen" allow="fullscreen">
  </iframe>
</div>
<a href="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAHChjLuykQ&#x2F;tFrEsLIHVqGAoKLoDlD71g&#x2F;view?utm_content=DAHChjLuykQ&amp;utm_campaign=designshare&amp;utm_medium=embeds&amp;utm_source=link" target="_blank" rel="noopener">Aula 01-04</a> de Icaro Davies


## O Mundo Antes da Nuvem

A computacao passou por grandes transformacoes ao longo do tempo.

Nos anos 1960, surgiu o conceito de **Utility Computing**: usar computacao como servico.

Nos anos 2000, publicar uma aplicacao era mais dificil e custoso.

- **Comprar hardware:** pesquisar, adquirir e aguardar servidores fisicos.
- **Montar infraestrutura:** sala, refrigeracao, espaco em data center.
- **Gerenciar operacao:** energia, nobreak, seguranca e conectividade.

### Tres pilares do problema antigo

- **Processo caro:** alto investimento inicial.
- **Processo lento:** grande tempo entre ideia e execucao.
- **Processo arriscado:** dificil prever capacidade para picos.

---

## Evolucao da Hospedagem

Antes da nuvem moderna, os modelos mais comuns eram:

| Modelo | Descricao | Vantagens | Desvantagens |
| --- | --- | --- | --- |
| **Servidor Dedicado** | Servidor fisico para um unico cliente. | Alto controle, seguranca e desempenho. | Custo alto e baixa flexibilidade. |
| **Colocation** | Cliente leva o servidor e aluga infraestrutura do data center. | Controle do hardware com suporte fisico externo. | Alto custo inicial e manutencao por conta do cliente. |
| **VPS** | Servidor virtual dentro de uma maquina fisica. | Bom custo-beneficio e facilidade de escalar. | Ainda exige administracao do sistema operacional. |
| **Hospedagem Compartilhada** | Varios sites compartilham o mesmo servidor. | Simples e barata. | Limites de configuracao e desempenho. |

---

## O Que e Computacao em Nuvem?

Segundo o **NIST**, computacao em nuvem e um modelo com acesso sob demanda via rede a recursos computacionais compartilhados, provisionados rapidamente e com pouco esforco de gerenciamento.

### 5 caracteristicas essenciais (NIST)

- **Autoatendimento sob demanda:** provisionamento sem atendimento humano direto.
- **Amplo acesso a rede:** acesso por notebook, celular e tablet.
- **Pool de recursos:** infraestrutura compartilhada entre varios clientes.
- **Rapida elasticidade:** aumenta ou reduz recursos conforme a demanda.
- **Servico mensuravel:** uso monitorado para cobranca e transparencia.

---

## Ferramentas para Pratica

Plataformas atuais simplificam o deploy:

- **Cloudflare Workers:** execucao de codigo em edge computing.
- **Vercel:** deploy automatico, especialmente com Next.js.
- **Render:** opcao pratica para APIs Python/FastAPI.

---

## Impacto Real e Mitos

### Mitos comuns

- **"A nuvem nao e segura":** provedores investem pesado em seguranca e conformidade.
- **"Migrar e caro":** o modelo pay-as-you-go pode reduzir custos em muitos cenarios.
- **"A nuvem tira empregos":** na pratica, cria novas funcoes em cloud, DevOps e dados.

### Casos de mercado

- **iFood:** uso intensivo de IA na AWS.
- **Itau:** operacao de Pix em nuvem com reducao de incidentes.
- **Netflix:** escala global apoiada em arquitetura cloud.

---

## Atividade Pratica

**Cenario:**
Uma loja online de ingressos recebe 1.000 visitantes por dia, mas no lancamento de um show pode receber 100.000 visitantes em 1 hora.

**Discussao em grupo:**

- Qual modelo de hospedagem voce adotaria: tradicional ou nuvem?
- Quais riscos existem em cada modelo?
- Como a elasticidade da nuvem ajuda no pico de acessos?

---

## Quiz de Fixacao

<quiz>
Qual alternativa descreve melhor o conceito de **Utility Computing**?

* [ ] Comprar servidores para uso local.
* [x] Computacao vendida como servico.
* [ ] Uso exclusivo de IA em nuvem.
* [ ] Manutencao manual de data centers.
</quiz>

<quiz>
No modelo tradicional (antes da nuvem), qual era um problema comum?

* [ ] Provisionamento instantaneo.
* [ ] Baixo custo inicial.
* [x] Dificuldade para prever demanda.
* [ ] Cobranca por consumo exato.
</quiz>

<quiz>
Em um **Servidor Dedicado**, qual e uma desvantagem frequente?

* [ ] Falta total de controle.
* [x] Custo elevado e ociosidade de recursos.
* [ ] Sem necessidade de manutencao.
* [ ] Escalabilidade infinita automatica.
</quiz>

<quiz>
O que significa **rapida elasticidade** na nuvem?

* [ ] Trocar de provedor sem custo.
* [x] Aumentar ou reduzir recursos rapidamente.
* [ ] Usar apenas servidores fisicos.
* [ ] Remover monitoramento de consumo.
</quiz>

<quiz>
Qual caracteristica do NIST trata da cobranca baseada em uso?

* [ ] Pool de recursos.
* [ ] Amplo acesso a rede.
* [x] Servico mensuravel.
* [ ] Autoatendimento sob demanda.
</quiz>

<quiz>
Em qual situacao a nuvem traz mais vantagem imediata?

* [ ] Demanda constante e previsivel sem variacao.
* [x] Pico repentino de acessos em pouco tempo.
* [ ] Projeto sem acesso a internet.
* [ ] Sistema sem necessidade de disponibilidade.
</quiz>

<quiz>
Qual opcao e mais alinhada ao perfil de deploy rapido para frontend moderno?

* [x] Vercel.
* [ ] Colocation.
* [ ] Servidor dedicado local.
* [ ] Hospedagem sem CI/CD.
</quiz>

<quiz>
O modelo **pay-as-you-go** indica que:

* [x] O cliente paga apenas o que consumir.
* [ ] O cliente paga valor fixo sempre.
* [ ] Nao existe monitoramento de uso.
* [ ] O custo inicial e obrigatoriamente alto.
</quiz>

<quiz>
Sobre o mito "nuvem elimina empregos de TI", a afirmacao correta e:

* [ ] Verdadeiro, pois automacao encerra toda operacao.
* [x] Falso, pois surgem novas funcoes tecnicas.
* [ ] Verdadeiro apenas para desenvolvimento web.
* [ ] Falso, mas sem criar novas oportunidades.
</quiz>

<quiz>
Para a loja de ingressos com pico de 100.000 usuarios em 1 hora, a melhor estrategia e:

* [ ] Manter um unico servidor pequeno o tempo todo.
* [ ] Comprar muitos servidores fixos para o ano inteiro.
* [x] Utilizar nuvem com escalabilidade automatica.
* [ ] Evitar monitoramento para reduzir custo.
</quiz>

<!-- mkdocs-quiz results -->