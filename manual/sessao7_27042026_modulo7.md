## Manual do Formando

## Disciplina: _Linguagens de Scripting e Linha de Comandos_

### Módulo 7 - Web Scraping com Python
____________________

## 1. Enquadramento geral

O acesso a dados disponíveis na Web constitui uma necessidade recorrente em múltiplos contextos académicos e profissionais. Apesar da crescente disponibilização de dados através de **APIs**, uma parte significativa da informação relevante encontra‑se ainda acessível apenas por intermédio de **páginas Web concebidas para consumo humano**.

O **Web Scraping** surge como um conjunto de técnicas que permitem recolher essa informação de forma automática, recorrendo a programas que simulam, de forma controlada, a leitura e interpretação de conteúdos Web. Este módulo introduz os conceitos fundamentais associados ao Web Scraping, clarificando o seu enquadramento, limitações e formas de implementação em Python.

______

## 2. O que é Web Scraping

O **Web Scraping** pode ser definido como o processo de **extração automática de informação a partir de páginas Web**, utilizando scripts ou programas, em alternativa à recolha manual.

De forma simplificada, um procedimento de Web Scraping envolve:

- o acesso programático a uma página Web;
- a leitura do seu conteúdo, normalmente em formato HTML;
- a identificação dos elementos que contêm a informação relevante;
- a extração e organização dessa informação de forma estruturada.

Ao recorrer a esta abordagem, é possível transformar conteúdos apresentados em páginas HTML em **dados processáveis**, passíveis de análise, visualização ou integração em outros sistemas.

O Web Scraping é particularmente útil quando:

- a informação existe online;
- é de acesso público;
- mas **não se encontra disponível através de uma API** ou ficheiro estruturado.

Entre os exemplos mais comuns de utilização destacam‑se:

- extração de conteúdos da Wikipédia ou de wikis técnicas;
- recolha de tabelas e listas em sites institucionais;
- construção de conjuntos de dados para análise exploratória;
- monitorização de conteúdos que se alteram ao longo do tempo;
- apoio a atividades de investigação.

O principal objetivo do Web Scraping não é substituir o acesso estruturado a dados, mas sim **automatizar tarefas repetitivas de recolha de informação**, garantindo eficiência e reprodutibilidade.

__________________

## 3. HTML e Web Scraping

Para compreender o funcionamento do Web Scraping é indispensável conhecer os princípios básicos do **HTML (HyperText Markup Language)**. O HTML é a linguagem utilizada para **estruturar o conteúdo das páginas Web**, definindo como a informação está organizada.

Uma página HTML é constituída por:

- **elementos (tags)** que representam diferentes tipos de conteúdo;
- **atributos**, como `id` ou `class`, que fornecem informação adicional;
- uma estrutura hierárquica em forma de **árvore**, frequentemente designada por DOM (Document Object Model).

Importa salientar que o HTML **não define o comportamento nem o aspeto visual da página**, mas apenas a estrutura do conteúdo. Esta distinção é fundamental no contexto do Web Scraping.

No Web Scraping não se recolhe informação arbitrária ou “solta”. Pelo contrário, a extração é feita com base na **estrutura do HTML**.

Através do HTML é possível:

- localizar blocos específicos de conteúdo (`div`, `section`);
- extrair texto (`p`, `span`);
- identificar listas e tabelas (`ul`, `ol`, `table`);
- selecionar elementos específicos através de **identificadores, classes ou atributos**.

A capacidade de interpretar corretamente a estrutura HTML determina a eficácia do processo de extração, sobretudo em páginas mais complexas.
____________

## 4. Procedimento geral de Web Scraping

O Web Scraping deve ser entendido como um **procedimento estruturado**, e não como uma operação pontual. Uma abordagem sistemática contribui para a robustez e manutenção dos scripts desenvolvidos.

De forma geral, o processo pode ser organizado em quatro etapas fundamentais:

1. **Identificação das páginas Web de interesse**
2. **Identificação dos elementos HTML relevantes**
3. **Extração da informação pretendida**
4. **Análise, filtragem ou armazenamento dos dados recolhidos**

Este encadeamento lógico permite que o processo seja reproduzível e adaptável a diferentes fontes de dados.

#### Identificação das páginas Web

A primeira etapa consiste em identificar as páginas que efetivamente contêm a informação necessária. Nesta fase importa:

- confirmar que os dados são públicos e acessíveis;
- verificar a consistência estrutural das páginas;
- evitar fontes com elevado grau de instabilidade ou dependência excessiva de JavaScript, sempre que possível.

#### Identificação dos elementos HTML

Uma vez identificada a página, é necessário analisar o seu HTML. Este processo implica:

- inspeção da estrutura da página através das ferramentas de desenvolvedor do browser;
- identificação das tags e atributos relevantes;
- exclusão de elementos irrelevantes como menus, rodapés ou blocos publicitários.

Esta etapa é essencial para garantir que o script de scraping recolhe apenas a informação desejada.

#### Extração da informação

Após identificados os elementos relevantes, procede‑se à extração da informação propriamente dita. Esta fase envolve:

- utilização de bibliotecas Python para aceder aos elementos HTML;
- extração de texto, links, tabelas ou outros conteúdos;
- limpeza e normalização dos dados recolhidos.

A qualidade dos dados extraídos depende diretamente do cuidado colocado nesta etapa.

#### Análise e armazenamento dos dados

Os dados recolhidos podem ser:

- analisados diretamente em Python;
- armazenados para utilização posterior.

Entre os formatos mais comuns de armazenamento encontram‑se:

- ficheiros CSV;
- ficheiros Excel;
- bases de dados relacionais.

A escolha do formato depende do objetivo final da recolha e do volume de dados envolvido.


## 5. Python e Web Scraping

O ecossistema Python disponibiliza um conjunto abrangente de bibliotecas que facilitam a implementação de procedimentos de Web Scraping.

Entre as bibliotecas mais relevantes destacam‑se:

- **requests**, para efetuar pedidos HTTP;
- **BeautifulSoup**, para análise e navegação do HTML;
- **lxml**, como alternativa de parsing eficiente;
- **Selenium**, para páginas dinâmicas que dependem de JavaScript.

É importante sublinhar que o Selenium deve ser utilizado apenas quando o conteúdo não está disponível no HTML inicial, dado o seu maior custo computacional e complexidade.

_____________

### Considerações finais

O Web Scraping é uma técnica poderosa, mas deve ser utilizada de forma responsável e criteriosa. Sempre que exista uma API oficial, essa deve ser a abordagem preferencial. Contudo, quando tal não é possível, o Web Scraping constitui uma solução viável para acesso automatizado a informação disponível na Web.

Neste módulo, o Web Scraping é apresentado não como um fim em si mesmo, mas como uma **ferramenta complementar** no conjunto de técnicas de acesso e processamento de dados abordadas ao longo da disciplina.

____
