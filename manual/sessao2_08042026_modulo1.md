

## Manual do Formando

## Disciplina: _Linguagens de Scripting e Linha de Comandos_

### Módulo 1: Noções Básicas de Scripting:

__________________________________________________________________

## Índice

- [1. Introdução ao Módulo](#1-introdução-ao-módulo)
	- [1.1 Objetivos do módulo](#11-objetivos-do-módulo)
	- [1.2 Enquadramento do scripting na disciplina](#12-enquadramento-do-scripting-na-disciplina)
- [2. Para que serve o Scripting?](#2-para-que-serve-o-scripting)
	- [2.1 Exemplos reais de automatização](#21-exemplos-reais-de-automatização)
- [3. Funcionamento Geral de um Computador](#3-funcionamento-geral-de-um-computemória interna (RAM)](#3-funcionamento-geral-de-um-computador)
	- [3.1 Funcionamento Geral de um Computador](#31-componentes-fundamentais)
	- [3.2 O Ciclo Básico de Funcionamento](#32-o-ciclo-básico-de-funcionamento)
	- [3.3 Execução de programas](#33-execução-de-programas)
	- [3.4 Comunicação Humano-Computador](#34-comunicação-humano-computador)
- [4. O que é um script?](#4-o-que-é-um-script)
	- [4.1 Conceito de script](#41-conceito-de-script)
	- [4.2 Scripts como sequências de instruções](#42-scripts-como-sequências-de-instruções)
	- [4.3 Scripts como automatização de rotinas](#43-scripts-como-automatização-de-rotinas)
	- [4.4 Scripts como “planos de ação”](#44-scripts-como-planos-de-ação)
- [5. Linguagens de Programação e Scripting](#5-linguagens-de-programação-e-scripting)
	- [5.1 Porque existem linguagens de programação?](#51-porque-existem-linguagens-de-programação)
	- [5.2 Tabela das Principais Linguagens](#tabela-das-principais-linguagens-de-programação)
- [6. Abstração em Programação](#6-abstração-em-programação)
	- [6.1 A metáfora do passageiro e do piloto](#61-a-metáfora-do-passageiro-e-do-pstemas)
	- [6.2 Níveis de abstração](#62-níveis-de-abstração-nas-linguagens-de-programação)
	- [6.3 Abstração como ferramenta para resolver problemas](#63-abstração-como-ferramenta-para-resolver-problemas)
	- [6.4 Vantagens e custos da abstração](#64-vantagens-e-custos-da-abstração)
- [7. Estrutura de um Script](#7-estrutura-de-um-script)
	- [7.1 Shebang](#71-shebang)
	- [7.2 Comentários](#72-comentários)
	- [7.3 Comandos](#73-comandos)
	- [7.4 Variáveis](#74-variáveis)
	- [7.5 Condições](#75-condições-if)
	- [7.6 Ciclos](#76-ciclos-for-while)
	- [7.7 Funções](#77-funções)
	- [7.8 Execução do script](#78-execução-do-script)
- [8. Scripting vs desenvolvimento de sistemas](#8-scripting-vs-desenvolvimento-de-sistemas)
- [9. Scripting na Prática](#9-scripting-na-prática)

_____________________________________________________________

## 1. Introdução ao Módulo

A crescente complexidade dos sistemas informáticos exige que utilizadores e profissionais consigam interagir com computadores de forma eficiente, flexível e automatizada. As linguagens de _scripting_ e são ferramentas fundamentais para interagir com a máquina, automatizando uma miríade de operações do dia-a-dia e para integrar diferentes componentes tecnológicas num workflow único.

Este módulo introduz os princípios essenciais do _scripting_. Parte-se de conceitos básicos — o funcionamento interno do computador, as diferentes linguagens e níveis de abstração — e progride-se até à análise prática de scripts e à compreensão do papel do _scripting_ em sistemas reais.

O objetivo principal deste módulo não é transformar o formando num programador tradicional, mas sim fornecer competências práticas para **automatizar procedimentos**, **manipular dados**, **interagir com o sistema operativo** e **integrar ferramentas externas**, capacidades cada vez mais relevantes em ciência de dados, administração de sistemas, computação e trabalho técnico em geral.

### 1.1 Objetivos do módulo

No final do módulo, o formando deverá ser capaz de:

- Compreender o papel do _scripting_ na automatização de processos e na integração de ferramentas;
- Identificar as principais diferenças entre linguagens compiladas e interpretadas;
- Reconhecer o conceito de abstração e a relação entre linguagens de alto e baixo nível;
- Entender a estrutura fundamental de um script (shebang, comandos, variáveis, condições, ciclos e funções);
- Distinguir _scripting_ de desenvolvimento de sistemas e compreender como estes se articulam.

### 1.2 Enquadramento do scripting na disciplina

O scripting e as linguagens de programação são elementos centrais no trabalho técnico, especialmente em contextos que exigem rapidez, automatização de processos e capacidade de lidar com grandes volumes de dados. 

O _scripting_ surge então como um meio de **formalizar e automatizar sequências de comandos**, tornando tarefas repetitivas mais rápidas, menos propensas a erro e facilmente reutilizáveis. Esta abordagem é amplamente utilizada em:

- análise e processamento de dados,
- administração de sistemas,
- integração de aplicações e ferramentas,
- desenvolvimento de pipelines,
- workflows técnicos em ciência de dados, GIS e sistemas distribuídos.

Ao longo do módulo, os formandos serão expostos a noções fundamentais sobre o funcionamento do computador, linguagens e níveis de abstração, de forma a compreenderem como um simples ficheiro de texto pode dar instruções precisas à máquina. O objetivo é fornecer bases sólidas para que qualquer formando, independentemente da sua experiência prévia, consiga dominar os conceitos essenciais do _scripting_ e aplicá-los nas atividades práticas e profissionais.


## 2. Para que serve o Scripting?

O _scripting_ emerge como uma resposta natural a um ambiente tecnológico cada vez mais complexo, diverso e exigente, no qual os utilizadores — sejam analistas, técnicos ou investigadores — necessitam de dominar processos eficientes que permitam transformar dados, coordenar ferramentas e automatizar procedimentos com o menor dispêndio possível de tempo, energia e erro humano. Se, nos primórdios da computação, o utilizador era forçado a lidar diretamente com as idiossincrasias da máquina, hoje, o recurso a linguagens de alto nível — como Bash e Python — permite operar num patamar de abstração que oculta detalhes irrelevantes e faculta uma intervenção mais intuitiva, lógica e orientada à tarefa.

O scripting distingue‑se, assim, como uma prática que democratiza o acesso à automação. Permite ao utilizador sistematizar sequências de passos que, de outro modo, teriam de ser executadas manualmente e repetidas de forma mecânica. É um instrumento que liberta tempo, reduz erros e aumenta a reprodutibilidade dos processos. Esta automação é essencial em ambientes onde a informação é volumosa, heterogénea e frequentemente sujeita a transformações: desde a simples organização de pastas e ficheiros até operações de processamento intensivo de dados, conversões, extrações, limpeza, integração de serviços e criação de rotinas estruturadas.

Para além disso, o scripting representa uma porta de entrada para a compreensão íntima do funcionamento dos sistemas, dos seus componentes essenciais, da lógica sequencial das operações e da forma como estes sistemas interagem através de APIs, bibliotecas ou interfaces de linha de comandos. Tal como sabemos, grande parte dos sistemas de informação modernos — bases de dados, plataformas Web, servidores de dados, utilitários de conversão, bibliotecas científicas — dispõem hoje de interfaces programáveis que permitem controlar funcionalidades complexas através de scripts bem concebidos, fomentando práticas de trabalho mais transparentes, eficientes e replicáveis.

De igual modo, é importante destacar que o scripting reforça a responsabilização técnica: ao substituir processos manuais por procedimentos escritos e versionados, cria‑se um registo explícito das operações efectuadas, facilitando auditorias, revisões, melhoria contínua e partilha de conhecimento. Além disso, quando os scripts se baseiam em ferramentas abertas, normas amplamente aceites e bibliotecas interoperáveis (como Bash, Python), potencia‑se a flexibilidade operacional e evita‑se a dependência excessiva de plataformas específicas — questão que assume particular relevância quando se fala de sustentabilidade, transparência e eficiência no uso de recursos.

Em síntese, o scripting é simultaneamente uma estratégia de automação, um mecanismo de integração de tecnologias, um instrumento de democratização técnica e uma metodologia de racionalização do trabalho. A sua relevância transcende a simples execução de comandos: constitui uma forma de pensar os processos, estruturá‑los e torná‑los inteligíveis, repetíveis e aperfeiçoáveis.

### 2.1 Exemplos reais de automatização

A utilidade do scripting torna‑se particularmente evidente quando examinamos exemplos concretos de situações em que a sua aplicação produz ganhos imediatos e mensuráveis:

### ✅ Automatização de tarefas repetitivas

- Criar centenas de pastas ou ficheiros automaticamente.
- Renomear grandes conjuntos de ficheiros (imagens, documentos, datasets).
- Limpar diretórios temporários ou organizar informação com base em padrões.

### ✅ Processamento de dados em lote

- Converter ficheiros de um formato para outro (ex.: CSV → JSON; TIFF → PNG).
- Aplicar filtros, extrair colunas, combinar datasets, gerar relatórios automáticos.
- Processar milhares de linhas de dados sem intervenção manual.

### ✅ Integração de ferramentas e APIs

- Usar scripts Python para descarregar dados de APIs públicas.
- Orquestrar pipelines:  
    ex.: _script Bash executa comandos que chamam Python, que processa dados, que depois são enviados para um servidor._
- Automatizar interações com bases de dados (MySQL, PostgreSQL/PostGIS).

### ✅ Automação no quotidiano profissional

- Execução programada de backups.
- Monitorização de espaço em disco e envio de alertas.
- Criação de relatórios diários ou semanais automaticamente.
- Execução de pipelines de Machine Learning ou ETL.

### ✅ Replicação de estudos e procedimentos científicos

- Repetir experiências com datasets diferentes sem recriar todo o processo.
- Criar scripts que encapsulam metodologias científicas para garantir rigor e transparência.

## 3. 🖥️ Funcionamento Geral de um Computador

(com base no modelo clássico de Von Neumann)

Os computadores modernos — desde um portátil até ao processador de uma máquina de lavar — seguem um conjunto comum de princípios estruturais. Estes princípios permitem que qualquer sistema consiga **armazenar dados**, **executar instruções** e **interagir com o exterior**.

Vamos por partes.

### 3.1. Componentes fundamentais:

##### 3.1.1. Dispositivos de entrada:

Permitem **introduzir dados** no sistema. Exemplos:

- Teclado
- Rato
- Scanner
- Sensores (num smartphone, por exemplo)

São a “porta” por onde as informações entram.

##### 3.1.2. CPU - Unidade Central de Processamento:

É o “cérebro” do computador e tem duas zonas principais:

#### **a) UAL – Unidade Aritmética e Lógica**

Responsável por:

- somas, subtrações, multiplicações, divisões
- comparações (>, <, ==)
- operações lógicas (AND, OR, NOT)

É onde o “pensamento” acontece.

#### **b) UC – Unidade de Controlo**

- Lê a próxima instrução da memória
- Interpreta o que essa instrução significa
- Ordena às restantes partes do sistema o que fazer

Inclui o **contador de programa**, que indica qual é a próxima instrução a executar.

##### 3.1.3 Memória interna (RAM):

Armazena temporariamente:

- dados com que os programas trabalham
- o próprio programa carregado para execução

É rápida, mas **volátil**: perde o conteúdo quando o computador desliga.

##### 3.1.4 Memória externa (discos)

Serve para **armazenamento permanente**:

- disco rígido (HDD)
- SSD
- cartões SD
- pen USB

Aqui ficam:

- programas instalados
- sistema operativo
- documentos do utilizador

##### 3.1.5. Dispositivos de saída:

Permitem **ver** ou **obter** os resultados:

- Monitor
- Impressora
- Altifalantes

### 3.2 O Ciclo Básico de Funcionamento:


Em praticamente todos os computadores modernos, segue-se o **modelo de Von Neumann**, que usa o famoso ciclo:

### **(1) Buscar → (2) Decodificar → (3) Executar**

1. **Buscar (Fetch)**  
    CPU vai à memória buscar a próxima instrução.
    
2. **Decodificar (Decode)**  
    A UC interpreta a instrução:  
    “é uma soma?”, “é um salto?”, “é uma leitura?”
    
3. **Executar (Execute)**  
    A UAL faz os cálculos ou executa as ações necessárias.
    

Depois, o contador avança para a instrução seguinte e o ciclo repete-se **milhões ou milhares de milhões de vezes por segundo**.

### 3.3 Execução de programas:
  
Quando abres uma aplicação — seja o Python, um browser ou um jogo — uma série de etapas bem definidas acontece dentro do computador. Estas etapas garantem que o processador consegue **entender** o que o programa quer fazer e **executar** as instruções de forma ordenada.

## 🔹 Passo 1 — O programa vive na memória externa

Antes de ser executado, o programa existe apenas como um ficheiro guardado num meio de armazenamento permanente:

- disco rígido (HDD),
- SSD,
- pen USB,
- ou outro tipo de memória não volátil.

Isto inclui:

- o código do programa,
- bibliotecas,
- ícones, recursos gráficos, etc.

Os programas ficam **armazenados na memória externa e só depois são transferidos para a memória interna para serem executados** .

## 🔹 Passo 2 — O sistema operativo carrega o programa para a RAM

Quando pedes para executar esse programa, o sistema operativo (Windows, macOS, Linux, etc.) assume o controlo.  
Ele é responsável por:

1. **Localizar o ficheiro executável** ou script.
2. **Reservar espaço na memória RAM**.
3. **Carregar o código e os dados necessários** para essa zona de memória.
4. **Preparar o ambiente de execução**, incluindo:
    - tabelas internas,
    - permissões,
    - ponteiros para funções,
    - variáveis de ambiente.

Este processo baseia‑se exatamente na explicação: _“As instruções são transferidas da memória externa para a memória interna para poderem ser executadas pela CPU”_ .

> 💡 **Porquê usar RAM e não o disco?**  
> Porque a memória RAM é muito mais rápida.  
> A CPU só consegue trabalhar a alta velocidade se as instruções estiverem numa memória rápida.

## 🔹 Passo 3 — A CPU começa a executar instruções

Uma vez o programa em RAM, a CPU inicia o seu ciclo clássico:

1. **Busca (fetch):** vai buscar a próxima instrução à RAM.
2. **Decodifica (decode):** a Unidade de Controlo interpreta o que a instrução significa.
3. **Executa (execute):** a UAL realiza cálculos, acessos à memória, saltos, etc.

Este ciclo repete‑se **milhões ou milhares de milhões de vezes por segundo**.

# ✅ Formas de executar programas — Compilados vs Interpretados

## ✅ a) Execução Compilada

Numa execução/linguagem compilada, o código fonte é transformado **antes da execução** num ficheiro de código de máquina. Este ficheiro pode depois ser executado diretamente pela CPU, tal como qualquer programa instalado no sistema.

Exemplos típicos: **C, C++, Rust, Go**.

Características principais:

1. Um **compilador** analisa e traduz o código de uma só vez.
2. Traduz tudo para **código de máquina**, totalmente adaptado ao processador.
3. Gera um **ficheiro executável** (por exemplo, `.exe` em Windows), para execução rápida e otimizada
4. A partir daí, o sistema operativo apenas carrega e executa esse programa.
5. Os erros são detectados maioritariamente na fase de compilação
6. O processo de desenvolvimento pode ser mais demorado, pois cada alteração exige uma nova compilação.

A grande vantagem deste modelo é o desempenho: porque o código já está traduzido, a execução é extremamente eficiente.

### ✅ Vantagens:

- Execução muito rápida (código já está pronto para a CPU).
- Ocupa menos recursos no momento da execução.
- Adequado para aplicações pesadas.

### ✅ Desvantagens:

- O processo de compilação pode ser lento.
- Menos flexível: qualquer alteração exige nova compilação.

---

## ✅ b) Execução Interpretada

Nas linguagens interpretadas, o código não é transformado integralmente antes da execução. Em vez disso, é lido e executado **instrução a instrução** por um interpretador.

Exemplos: **Python, JavaScript, Ruby, Bash**.

1. O interpretador lê a **primeira instrução** do programa.
2. **Traduz e executa imediatamente** essa instrução.
3. Avança para a instrução seguinte.
4. Repete até ao fim.

Este modelo oferece:

- **detecção de erros mais direta**: basta executar o código para identificar um problema;
- adaptação rápida — escreve‑se e testa‑se de imediato;
- grande flexibilidade, ideal para scripts, automação e prototipagem;
- maior portabilidade: o mesmo script funciona em várias plataformas, desde que exista interpretador.

A desvantagem está na velocidade: como cada instrução é analisada no momento da execução, o desempenho tende a ser inferior ao de linguagens compiladas.

### ✅ Vantagens:

- O programa pode ser executado logo após ser escrito (sem compilação total).
- Mais flexível para testes e ensino.
- Portável entre sistemas (o interpretador é que muda).

### ✅ Desvantagens:

- Geralmente mais lento que código compilado.
- O interpretador consome memória adicional.

A tabela seguinte sintetiza esta informação:

|                                | Linguagens Compiladas                           | Linguagens Interpretadas                 |
| ------------------------------ | ----------------------------------------------- | ---------------------------------------- |
| **Tradução**                   | Antes da execução                               | Durante a execução                       |
| **Velocidade**                 | Muito elevada                                   | Moderada                                 |
| **Deteção de erros**           | Na fase de compilação                           | No momento da execução                   |
| **Facilidade para iniciantes** | Moderada                                        | Elevada                                  |
| **Portabilidade**              | Menor                                           | Maior                                    |
| **Adequação**                  | Sistemas críticos, jogos, algoritmos intensivos | Scripts, automação, prototipagem, ensino |


### 3.4. Comunicação Humano-Computador:

O ser humano escreve numa **linguagem natural** (Português).  
O computador só entende **binário** (0 e 1).

As **linguagens de programação** são a ponte.  
O programador escreve código compreensível para humanos;  
o computador recebe instruções claras e estruturadas.

Este processo inclui:

- tradução (compilação/interpretação)
- representação interna dos dados
- execução controlada pelas unidades da CPU

Esta estrutura permite que qualquer computador:

- **execute vários programas diferentes**
- **manipule e armazene dados**
- **tome decisões** (via instruções condicionais)
- **repita tarefas**
- **interaja com utilizadores e sensores**

A arquitetura modular torna o sistema flexível e generalista.

## 4. O que é um Script

Os computadores executam programas de diferentes naturezas: alguns complexos, compostos por milhares de instruções, e outros mais simples, destinados a resolver tarefas específicas e repetitivas. É neste segundo grupo que encontramos aquilo que nesta disciplina designamos como **scripts**. Um _script_ é, de forma geral, um pequeno programa constituído por uma sequência de instruções que o computador executa automaticamente e que tem como objetivo agilizar, automatizar ou organizar uma determinada tarefa. Apesar de simples, os scripts desempenham um papel fundamental no desenvolvimento de software, na administração de sistemas e até no uso quotidiano do computador, permitindo transformar ações manuais em processos automáticos, mais rápidos e menos propensos a erro.

### 4.1 Conceito de script

Um _script_ pode ser entendido como um **programa de pequena escala**, normalmente escrito numa linguagem interpretada, e que serve para realizar operações bem definidas. Ao contrário das grandes aplicações compiladas, os scripts são concebidos para serem **rápidos de escrever, fáceis de alterar e simples de executar**. São particularmente úteis quando o utilizador precisa de expressar um conjunto de passos de forma direta, sem necessidade de estruturas complexas ou de uma fase de compilação.

Em muitas linguagens — como Python, JavaScript, Bash ou PowerShell — um script não é mais do que um **ficheiro de texto contendo instruções**, que o interpretador reconhece e executa. A ênfase está na clareza e na ação imediata: escreve‑se, guarda‑se e executa‑se.

### 4.2 Scripts como sequências de instruções

Tal como qualquer programa, um script é uma **sequência ordenada de instruções**, que o computador executa passo a passo. Estas instruções podem incluir:

- atribuições de valores a variáveis,
- operações aritméticas ou lógicas,
- testes condicionais (if),
- ciclos (for, while),
- leitura e escrita de dados,
- chamadas a funções ou módulos.

Seguindo a lógica apresentada anteriormente, estas instruções formam o que podemos considerar um **pequeno algoritmo**, composto por passos explícitos que traduzem a intenção do utilizador. De certa forma, o script funciona como um “texto técnico” com instruções que o computador interpreta linha a linha, aplicando o modelo _lê–avalia–executa_ visto nas linguagens interpretadas.

### 4.3 Scripts como automatização de rotinas

Uma das grandes vantagens dos scripts é a sua capacidade de **automatizar rotinas**. Muitas tarefas que, feitas manualmente, exigiriam vários passos — copiar ficheiros, processar dados, gerar relatórios, transformar imagens, consultar informação na web — podem ser realizadas automaticamente através de um script.

O utilizador transforma uma rotina repetitiva numa **descrição precisa e formalizada**, garantindo que o computador a executa sempre da mesma maneira. Isto reduz erros, aumenta a eficiência e liberta o utilizador para tarefas mais complexas. Em ambientes profissionais, os scripts são frequentemente usados para:

- manutenção de sistemas,
- criação de backups,
- processamento diário de dados,
- gestão de redes,
- automatização de tarefas administrativas.

Num contexto de programação, o script aproxima‑se também do conceito de _prototipagem rápida_, permitindo testar ideias ou pequenos trechos de código sem necessidade de criar um projeto completo.

### 4.4 Scripts como “planos de ação”

Podemos ainda ver um script como um **plano de ação**, semelhante a um conjunto de instruções que damos a uma máquina para realizar uma tarefa concreta. Este plano de ação é composto por:

1. **objetivos** (o que queremos que aconteça),
2. **passos** (como decorrerá a execução),
3. **condições** (o que fazer perante diferentes situações),
4. **ações finais** (apresentar resultados, guardar dados, notificar o utilizador).

Esta analogia aproxima o script do conceito de algoritmo: um conjunto finito de instruções, claras e precisas, destinadas a resolver um problema. O script representa esse algoritmo numa linguagem que o computador entende. A diferença é que, nos scripts, o foco está menos na sofisticação da estrutura e mais na expressividade e rapidez com que se consegue traduzir a intenção do utilizador.

Em Python, por exemplo, um script pode ser tão simples como meia dúzia de linhas que transformam um ficheiro, obtêm um valor, ou gerem um gráfico. O essencial é que o script **descreve ações** — não a estrutura complexa de um programa, mas antes o “caminho” a seguir.

  

## 5. Linguagens de Programação e Scripting

A comunicação entre o ser humano e o computador não pode ser feita diretamente através da linguagem natural. Embora intuitiva para nós, ela é demasiado ambígua e pouco estruturada para um sistema baseado em operações binárias. Para ultrapassar esta barreira, surgiram as **linguagens de programação**: sistemas formais, constituídos por regras rigorosas de sintaxe e semântica, que permitem ao programador descrever problemas e indicar ao computador como resolvê‑los.

As linguagens de programação evoluíram ao longo das décadas, acompanhando as necessidades dos diferentes paradigmas de desenvolvimento. Hoje coexistem centenas de linguagens, cada uma com a sua filosofia, domínio de aplicação e modelo de execução. Algumas são desenhadas para sistemas complexos; outras, como as linguagens de _scripting_, privilegiam a simplicidade e a rapidez de prototipagem.

### 5.1 Porque existem linguagens de programação?

O objetivo fundamental de uma linguagem de programação é **estabelecer uma ponte entre a forma humana de pensar e a forma mecânica de operar do computador**. Esta ponte deve ser suficientemente expressiva para permitir a descrição de algoritmos complexos, mas também suficientemente precisa para evitar ambiguidades.

As linguagens existem porque:

- permitem **abstrair** os detalhes da máquina (registos, instruções binárias, endereços de memória);
- facilitam a **organização do pensamento** na resolução de problemas;
- possibilitam que diferentes pessoas compreendam e mantenham o mesmo código;
- tornam o desenvolvimento mais **rápido, seguro e produtivo**;
- permitem adaptar o estilo de programação ao tipo de problema (procedimental, funcional, orientado a objetos, declarativo, etc.).

Sem estas linguagens, programar significaria manipular diretamente números binários — uma tarefa impraticável para problemas de qualquer dimensão realista.

# ✅ **Tabela das Principais Linguagens de Programação**

|**Linguagem**|**Paradigma Principal**|**Modelo de Execução**|**Características / Usos Típicos**|
|---|---|---|---|
|**Python**|Multiparadigma (imperativo, funcional, OO)|Interpretada / híbrida|Automação, ciência de dados, IA, ensino, scripting. Sintaxe simples e muito expressiva.|
|**JavaScript**|Imperativo / funcional|Interpretada|Linguagem da Web. Executa no browser. Usada também em servidores (Node.js).|
|**Java**|OO|Compilada → bytecode|Aplicações empresariais, Android, servidores. Forte portabilidade (JVM).|
|**C**|Imperativo|Compilada|Sistemas operativos, drivers, programação de baixo nível. Muito rápida e próxima do hardware.|
|**C++**|OO / genérico|Compilada|Jogos, aplicações de alto desempenho, motores gráficos. Combina performance com abstração.|
|**C#**|OO|Compilada → bytecode (CLR)|Aplicações Windows, Unity, desenvolvimento empresarial. Muito usado no ecossistema Microsoft.|
|**Go (Golang)**|Imperativo / concorrente|Compilada|Sistemas distribuídos, servidores, cloud computing. Simples e extremamente rápida a compilar.|
|**Rust**|Imperativo / funcional|Compilada|Sistemas de alto desempenho com segurança de memória. Substituto moderno do C++.|
|**Ruby**|OO|Interpretada|Desenvolvimento rápido de aplicações web (Rails). Foco na produtividade.|
|**PHP**|Imperativa|Interpretada|Desenvolvimento web no lado do servidor. Muito usado em sites e CMS.|
|**Kotlin**|OO / funcional|Compilada|Desenvolvimento Android moderno. Interoperável com Java.|
|**Swift**|OO / funcional|Compilada|Desenvolvimento para iOS e macOS. Segura e moderna.|
|**SQL**|Declarativa|Interpretada (pelos motores de BD)|Manipulação e consulta de bases de dados.|
|**R**|Funcional / estatística|Interpretada|Estatística, ciência de dados, análise de grandes conjuntos de dados.|
|**MATLAB**|Imperativa|Interpretada|Engenharia, processamento de sinais, cálculo numérico.|
|**Shell Script (Bash)**|Script|Interpretada|Automação em sistemas Linux/Unix. Gestão de servidores.|
|**PowerShell**|Script|Interpretada|Automação e administração no ecossistema Windows.|


  

## 6. Abstração em Programação

A programação moderna assenta num princípio fundamental: a **abstração**. Abstrair significa esconder detalhes complexos para que o programador possa concentrar‑se apenas no nível de informação necessário para resolver o problema em causa. Tal como acontece em tantos sistemas tecnológicos, também na informática lidamos com modelos simplificados da realidade — modelos que capturam apenas o que é relevante e deixam de fora o que seria demasiado técnico, trabalhoso ou desnecessário conhecer.

Este princípio está presente em todas as linguagens de programação, mas manifesta‑se de forma diferente conforme a linguagem opera mais próxima do hardware ou mais próxima da forma humana de pensar. Assim, as linguagens não são todas iguais: variam no grau de abstração que oferecem e, por consequência, no tipo de problemas para que são mais adequadas.

### 6.1 A metáfora do passageiro e do piloto

A abstração pode ser facilmente compreendida através de uma analogia: viajar num avião.

Um **passageiro** entra no avião, senta‑se e desfruta da viagem. Não precisa de saber como funcionam os sistemas hidráulicos, os mecanismos de controlo de voo, os cálculos aerodinâmicos ou as comunicações com a torre de controlo. Esses detalhes são reais e importantíssimos, mas estão ocultos. Para o passageiro, a experiência resume‑se a algumas ações simples: entrar, ocupar um lugar, ajustar o cinto e esperar pelo destino.

Um **piloto**, por outro lado, necessita de compreender uma parte significativa da complexidade da aeronave. Tem de interpretar instrumentos, controlar potência, planear rotas, reagir a falhas e operar sistemas diversos. Ainda assim, mesmo o piloto não está exposto à totalidade dos detalhes mecânicos do avião; também ele trabalha com níveis de abstração — painéis, indicadores, comandos — que resumem sistemas muito mais complexos que se encontram por baixo da superfície.

As **linguagens de programação funcionam de forma idêntica**. Existem linguagens que tratam o programador como “passageiro”: ocultam a maior parte da complexidade do sistema e deixam‑no focar na regra, no cálculo ou na ação desejada. Outras aproximam o programador do papel de “piloto”: permitem maior controlo, maior eficiência e maior precisão, mas exigem conhecimento mais profundo da máquina subjacente.

### 6.2 Níveis de abstração nas linguagens de programação

Todas as linguagens são abstrações sobre o hardware, mas nem todas o fazem ao mesmo nível. A própria linguagem de máquina é o nível mais baixo possível — onde cada instrução corresponde, mais ou menos diretamente, a operações físicas que o processador é capaz de executar. À medida que ascendemos na hierarquia, surgem linguagens mais fáceis de ler e de escrever, oferecendo estruturas mais próximas da linguagem humana ou matemática.

Python, por exemplo, é considerada uma **linguagem de alto nível** muito expressiva. Permite escrever operações complexas em poucas linhas, esconder pormenores da gestão de memória, evitar manipulação de ponteiros ou de registos e trabalhar com objetos completos em vez de números binários. Nesta linguagem, o programador assume o papel de “passageiro”: descreve o que quer fazer e o interpretador ocupa‑se dos detalhes técnicos.

C++ também é uma linguagem de alto nível — permite a criação de funções, classes, estruturas, algoritmos complexos — mas oferece acesso direto à memória, controlo detalhado sobre o ciclo de vida dos objetos e uma relação muito estreita com a arquitetura do computador. Aqui, o programador é mais “piloto”: tem mais poder, mas também mais responsabilidade. Pode otimizar ao pormenor, mas ao fazê‑lo tem de ter cuidado para não introduzir erros difíceis de detectar, como fugas de memória ou acessos indevidos.

A diferença entre estas duas linguagens ilustra bem que **nem todas as linguagens de alto nível estão no mesmo patamar de abstração**. Python situa‑se mais distante da máquina e mais próxima do raciocínio humano; C++ encontra‑se mais próxima da máquina, oferecendo mecanismos de abstração mas sem esconder por completo a complexidade do sistema.

### 6.3 Abstração como ferramenta para resolver problemas

A grande força da abstração está na capacidade de permitir que o programador **pense no problema e não nos detalhes da máquina**. Quando trabalhamos em Python, podemos criar listas, dicionários, classes ou funções sem nos preocuparmos com a forma exata como estes elementos são geridos na memória. Isto é possível porque alguém implementou esses mecanismos ao nível inferior, usando outra linguagem com menos abstração.

Por exemplo, quando escrevemos uma instrução simples como:

```
Python

lista.append(10)
```  

estamos a desencadear uma sequência complexa de operações realizadas de forma automática — realocação de memória, gestão de índices, aumento de capacidade interna — tudo sem que o programador tenha de intervir. Esta capacidade de delegar detalhes é uma das grandes vantagens das linguagens com elevado nível de abstração.

### 6.4 Vantagens e custos da abstração

A abstração não é apenas uma conveniência; é uma estratégia crucial para lidar com a complexidade crescente dos sistemas computacionais. Programas modernos, como browsers, motores gráficos ou sistemas de aprendizagem automática, seriam impossíveis de gerir se não existisse uma hierarquia de camadas ocultas. Cada camada esconde complexidade e expõe apenas o que é necessário para o nível seguinte.

No entanto, como em tudo, há um custo associado:

- Quanto maior a abstração, maior tendência para perder controlo direto sobre o desempenho ou sobre a forma exata como os recursos são utilizados.
- Quanto menor a abstração, maior o esforço e o conhecimento exigido ao programador.

Por este motivo, diferentes linguagens posicionam‑se em diferentes pontos do espectro entre controlo e simplicidade. Python sacrifica desempenho em troca de expressividade. C++ sacrifica simplicidade em troca de controlo. Cada linguagem é projetada para um determinado tipo de utilizador e de problema.

  

## 7. Estrutura de um Script

Um script é, na sua essência, uma sequência organizada de instruções que o computador executa de forma ordenada. Tal como um pequeno programa, o script deve ser escrito de forma clara, estruturada e previsível, permitindo que outro utilizador (ou o próprio autor, mais tarde) compreenda a sua lógica e o seu propósito. Neste capítulo analisamos os elementos fundamentais que constituem a estrutura típica de um script, recorrendo aos mesmos princípios de legibilidade, modularidade e definição de ambiente apresentados anteriormente.

A estrutura de um script, embora variável entre linguagens, segue um conjunto de convenções amplamente utilizadas: começa por indicar ao sistema como deve ser interpretado, estabelece comentários que guiam o leitor, apresenta comandos, manipula variáveis, define condições, descreve ciclos, organiza funções e termina com a sua execução. Estes blocos formam o esqueleto de qualquer ficheiro de script.

### 7.1 Shebang

Em muitos sistemas, sobretudo os baseados em Unix, o primeiro elemento visível num script é a chamada **linha shebang**. Trata‑se de uma indicação especial, colocada no início do ficheiro, que informa o sistema operativo sobre qual o interpretador a utilizar aquando da execução. É como indicar, logo à entrada, quem terá a responsabilidade de “ler” o texto que se segue.

Por exemplo, num script Python, a linha:

```
#!/usr/bin/env python3
```

instrui o sistema a invocar o interpretador Python 3 para executar o ficheiro. Assim, o utilizador pode simplesmente escrever `./meuscript.py` na consola, sem necessidade de chamar explicitamente o interpretador. Esta linha não é obrigatória, mas torna o script mais autónomo e mais compatível com diferentes ambientes. Se o Shebang não for incluído, torna-se necessário especificar o interpretador quando se solicita a execução do script na linha de comandos - `python3 meuscript.py` 

```Python

#!/usr/bin/env python3

print("Olá, mundo!")

```

```Bash

#!/usr/bin/env bash

echo "Olá, mundo!"

```


### 7.2 Comentários

Um dos aspetos centrais de um script bem escrito é a presença de **comentários**. Estes funcionam como notas deixadas pelo autor para humanizar o código: explicam intenções, descrevem o propósito de determinadas instruções ou alertam para detalhes importantes. Não são executados e servem apenas para clarificar.

Os comentários desempenham um papel importante na legibilidade do programa, funcionando como documentação interna. Em Python ou Bash, comentamos com o símbolo `#`; em Java e JavaScript, comenta-se com o símbolo `//`. Comentários longos podem ser organizados em blocos, geralmente colocados no início do script para contextualizar o leitor.

```Python

# Este é um comentário de linha única em Python

"""

Este é um comentário de várias linhas,

muito usado para documentar scripts ou funções.

"""

print("Exemplo de comentários.")

```

```Bash

# Comentário em Bash: explica o que o script faz  

echo "Comentários são ignorados pelo interpretador."

```


### 7.3 Comandos

O corpo de um script é constituído por **comandos**, instruções que o interpretador executa seguindo a ordem em que aparecem. Cada linha representa uma ação do programa — seja imprimir um valor, ler dados, efetuar um cálculo ou chamar uma função pré‑definida.

Como o interpretador segue o ciclo _lê → avalia → executa_, cada comando introduz uma alteração no estado do programa ou desencadeia algum efeito externo. Num pequeno script, a sequência de comandos pode ser suficiente para descrever toda a lógica pretendida, funcionando como um algoritmo explícito e linear.

```Python

print("A executar comandos...")

x = 10

y = 25

z = (x - y) / (x + y)

print("O valor de z é:", z)

```

```Bash

# Comentário em Bash: explica o que o script faz  

echo "A executar comandos..."

x=10

echo "O valor de x é: $x"

```

### 7.4 Variáveis

Tal como nas linguagens tratadas anteriormente, as **variáveis** permitem associar nomes a valores, funcionando como referências para objetos criados durante a execução. Nos scripts, as variáveis são essenciais para armazenar resultados intermédios, dados introduzidos pelo utilizador ou valores calculados ao longo do programa.

A tipagem dinâmica de linguagens de scripting, como Python, simplifica esta operação: o nome passa a referir‑se ao objeto criado, e não a uma posição fixa de memória. Esta flexibilidade é coerente com o espírito dos scripts — simples, diretos e adaptáveis.

```Python

nome = "Joaquim"
idade = 33
altura = 1.85

print("Nome:", nome)

print("Altura:", altura)

```

```Bash

nome="Joaquim"

idade=25

altura=1.81

echo "Nome: $nome"

echo "Altura: $altura"

```

### 7.5 Condições (if)

Os scripts não se limitam a executar ações lineares; muitas vezes precisam de tomar decisões. Para isso, recorrem à instrução **if**, que permite selecionar caminhos alternativos consoante o valor de uma expressão lógica. Como discutido no capítulo sobre instruções de controlo, este mecanismo é fundamental para transformar um script numa sequência inteligente de ações, capaz de reagir ao contexto.

A presença de condições reforça o carácter algorítmico do script, permitindo que este conduza diferentes fluxos de execução conforme os dados recebidos ou o estado da computação.

```Python

idade = 20

if idade >= 18:
    print("Maior de idade.")
else:
    print("Menor de idade.")

```

```Bash

idade=20

if [ "$idade" -ge 18 ]; then
    echo "Maior de idade."
else
    echo "Menor de idade."
fi

```

### 7.6 Ciclos (for, while)

Os **ciclos** permitem repetir blocos de código, uma característica indispensável em tarefas automatizadas — precisamente o domínio em que os scripts mais se distinguem. O ciclo `for` é frequentemente utilizado para percorrer coleções ou repetir um número fixo de vezes, enquanto o ciclo `while` executa repetidamente uma instrução até que uma condição deixe de ser verdadeira.

A compreensão destes ciclos é fundamental para a construção de programas que manipulam sequências, processam dados e interagem com o utilizador de forma controlada.

```Python

# Python for loop
for i in range(5):
    print("Iteração", i)

lista = ['joao', 'joaquim', 'matilde']

for nome in lista:
	# Imprime o cumprimento de cada nome
	print(f'O comprimento do nome {nome} é {str(len(nome))}')


# Python while loop
contador = 0

while contador < 3:
    print("Contador:", contador)
    contador += 1
```

```Bash

for i in {0..4}; do
    echo "Iteração $i"
done

lista=("joao" "joaquim" "matilde")

# Percorrer cada nome da lista
for nome in "${lista[@]}"; do
    # Obter o comprimento do nome usando ${#variavel}
    comprimento=${#nome}
    echo "O comprimento do nome $nome é $comprimento"
done

contador=0

while [ "$contador" -lt 3 ]; do

    echo "Contador: $contador"

    contador=$((contador + 1))

done
```

### 7.7 Funções

À medida que um script cresce, torna‑se desejável organizar o código em **funções**, pequenas unidades de ação que agrupam comandos relacionados. Uma função oferece dois benefícios centrais: permite **abstração** (ocultando detalhes internos) e promove **reutilização**, uma das boas práticas fundamentais da programação.

Uma função bem definida possui um nome descritivo, parâmetros formais e, opcionalmente, um valor de retorno. Num script simples, pode bastar uma ou duas funções; em ficheiros maiores, a modularização torna‑se essencial para garantir clareza e facilitar a manutenção.

```Python
#!/usr/bin/env python3

def media(valores):

    """Calcula a média de uma lista de valores."""

    return sum(valores) / len(valores)

def acima_da_media(valores):

    """Devolve quantos valores estão acima da média."""

    m = media(valores)

    contador = 0

    for v in valores:

        if v > m:

            contador += 1

    return contador

def main():

    lista1 = [10, 20, 30, 40]

    lista2 = [5, 2, 9, 3, 12, 7]

    print("Média da lista 1:", media(lista1))

    print("Valores acima da média na lista 1:", acima_da_media(lista1))

    print("Média da lista 2:", media(lista2))

    print("Valores acima da média na lista 2:", acima_da_media(lista2))

if __name__ == "__main__":

    main()

```

```Bash
#!/usr/bin/env bash
# Calcula a média de um array numérico

media() {
    local lista=("$@")

    local soma=0

    for n in "${lista[@]}"; do

        soma=$((soma + n))

    done

    echo $((soma / ${#lista[@]}))
}

# Conta quantos valores estão acima da média

acima_da_media() {
    local lista=("$@")

    local m=$(media "${lista[@]}")

    local contador=0

    for n in "${lista[@]}"; do
        if [ "$n" -gt "$m" ]; then
            contador=$((contador + 1))
        fi
    done

    echo "$contador"

}


lista1=(10 20 30 40)
lista2=(5 2 9 3 12 7)

echo "Média lista 1: $(media "${lista1[@]}")"

echo "Acima da média lista 1: $(acima_da_media "${lista1[@]}")"

echo "Média lista 2: $(media "${lista2[@]}")"

echo "Acima da média lista 2: $(acima_da_media "${lista2[@]}")"

```

### 7.8 Execução do script

Finalmente, após a definição de comandos, funções e estruturas de controlo, o script é **executado**.

A execução de um script traduz‑se, assim, na realização ordenada de todas as instruções definidas, seguindo o modelo _lê → avalia → executa_. Tal como um intérprete musical percorre a partitura do início ao fim, também o interpretador percorre o ficheiro de script, dando vida às instruções que o compõem.

```Bash

# Execução script Python
python3 script.py

# Execução de script Python com Shebang
./script.py

# Execução script em Bash
chmod +x script.sh
./script.sh
```


## 8. Scripting vs Desenvolvimento de Sistemas

Embora o _scripting_ e o desenvolvimento de sistemas façam parte do mesmo universo da programação, representam níveis de atuação bastante distintos. Um **script** é tipicamente um programa pequeno, criado para resolver uma tarefa específica: automatizar uma rotina, analisar um conjunto de dados, executar uma sequência de comandos ou coordenar partes dispersas de um processo. O script trabalha, por assim dizer, “ao nível da ação imediata”. Foca‑se em tarefas pontuais, isoladas, que precisam de ser realizadas de forma rápida, repetida ou automática.

Já o **desenvolvimento de sistemas** envolve uma visão muito mais ampla. Um sistema é composto por múltiplos módulos que interagem entre si: dispositivos físicos, serviços de rede, bases de dados, interfaces de utilizador, aplicações web, mecanismos de comunicação, algoritmos especializados, camadas de segurança, entre outros. Para construir um sistema, o programador precisa de considerar arquitetura, fluxo de dados, resiliência, escalabilidade, monitorização e manutenção — aspetos que vão muito além da lógica localizada de um único script. Assim, enquanto um script se concentra numa tarefa, um sistema orquestra **um conjunto de tarefas, tecnologias e componentes**.

Podemos ilustrar esta diferença com um exemplo concreto: um **sistema de deteção automática de fogos florestais**. Imaginemos que uma rede de câmaras e sensores está instalada numa área protegida. Cada sensor capta imagens, temperatura, fumo ou níveis de partículas e envia estes dados para um servidor central. No servidor, existe um **script** responsável por analisar os dados recebidos. O script pode verificar variações anómalas, detetar padrões compatíveis com fumo ou chamas e, se necessário, gerar um alerta. Contudo, este script representa apenas **uma pequena parte** do sistema total.

O sistema completo inclui:

- **Sensores e câmaras** no terreno, capazes de recolher imagens e dados ambientais.
- **Comunicação entre dispositivos** e o servidor central.
- **Servidores de análise**, onde scripts e programas mais complexos processam os dados em tempo real.
- **Mecanismos de alerta**, enviando notificações por SMS, e‑mail ou rádio para equipas de vigilância e autoridades.
- **Uma aplicação web** que permite visualizar mapas, imagens das câmaras, eventos registados e relatórios.
- **Registos históricos**, armazenados numa base de dados para análise posterior.
- **Monitorização contínua**, garantindo que todos os componentes funcionam corretamente.

Neste contexto, o script tem um papel essencial — analisar os dados e tomar uma decisão. No entanto, ele é apenas uma peça dentro de um ecossistema mais vasto. Se compararmos, o script é como um músculo isolado, enquanto o sistema é todo o organismo — com órgãos especializados, canais de comunicação e mecanismos de coordenação.

Assim, enquanto o _scripting_ se centra em escrever código rápido, direto e eficaz para automatizar ou transformar pequenas partes de um processo, o desenvolvimento de sistemas abrange um conjunto alargado de disciplinas: arquitetura de software, comunicação entre módulos, gestão de dados, interfaces de utilizador, segurança, escalabilidade e operação contínua. Em suma: **todo o sistema pode utilizar scripts, mas um script, por si só, nunca é um sistema**.
  

## 9. Scripting na Prática

Na prática, o _scripting_ assume um papel fundamental na integração de componentes e na orquestração de ferramentas que já existem. Enquanto o desenvolvimento de sistemas implica projetar arquiteturas completas, construir módulos, garantir fiabilidade, escalabilidade e gestão de dados, o scripting concentra‑se em **fazer as ferramentas trabalhar em conjunto** para atingir um objetivo específico. Um script raramente resolve todo o problema: o seu propósito é unir peças, automatizar fluxos e transformar ações isoladas numa sequência coerente.

O valor do scripting está precisamente na capacidade de **aproveitar o que já existe**. Muitas linguagens oferecem bibliotecas vastíssimas — e no caso particular do Python, este é talvez o seu maior trunfo. Existe uma biblioteca para quase tudo: comunicação com servidores, tratamento de imagens, aprendizagem automática, manipulação de ficheiros, análise de dados, acesso a bases de dados, controlo de hardware, entre muitas outras. Em vez de reinventar soluções, o programador identifica as ferramentas adequadas e combina‑as num script que automatiza o trabalho. O mesmo acontece no mundo Bash, onde scripts coordenam comandos do sistema operativo, utilitários externos e pipelines complexos.

Para além disso, vivemos num ecossistema digital onde muitos serviços e aplicações disponibilizam **APIs** — interfaces programáticas que permitem aceder a dados ou executar operações de forma automática. Plataformas Web, sistemas de mapas, serviços meteorológicos, bases de dados públicas, aplicações empresariais e até redes sociais oferecem endpoints que podem ser consultados diretamente a partir de scripts. Assim, um script pode obter informação em tempo real, processá‑la e desencadear ações sem intervenção humana.

Este modelo torna‑se particularmente evidente em sistemas mais complexos. Imagine‑se um sistema de identificação e alerta de fogos florestais. Na floresta existem câmaras, sensores de temperatura, detetores de fumo e outros dispositivos que recolhem dados continuamente. Estes dados são enviados para um servidor central, onde um **script Python** analisa automaticamente as imagens e métricas recebidas. O script procura padrões compatíveis com fumo ou aumento anómalo de temperatura, aplica filtros ou modelos de detecção e, caso se confirme uma situação suspeita, desencadeia notificações. Outro módulo do sistema envia alertas por SMS ou e‑mail para equipas de vigilância, enquanto uma aplicação Web permite aos operadores visualizar os eventos detetados em tempo real, consultar histórico e monitorizar o estado dos sensores. Neste cenário, o script é apenas uma peça — mas uma peça fundamental — que liga sensores, algoritmos de análise, serviços de comunicação e interfaces Web, funcionando como ponto de coordenação entre elementos muito diferentes.

É precisamente isto que caracteriza o scripting na prática: **a capacidade de articular ferramentas, serviços e bibliotecas** para resolver problemas concretos. O script não substitui o sistema; antes, dá‑lhe movimento. Permite automatizar caminhos, ligar módulos heterogéneos e transformar componentes dispersos num fluxo de trabalho coeso. Em suma, o scripting é a arte de combinar, integrar e operacionalizar — é o motor silencioso que faz o sistema funcionar.