

# Planeamento das Sessões e manual

## Disciplina

### Linguagens de Scripting e Linha de Comandos 
 ___________________________________
  
Este documento apresenta o planeamento detalhado das sessões da formação, incluindo conteúdos abordados, objetivos pedagógicos e agenda de trabalho de cada sessão.
____________________________

## Índice

- [Planos de sessão](#planos-de-sessão)
	- [Sessão 1 – 06/04/2026](#sessão-1---06042026)
	- [Sessão 2 – 08/04/2026](#sessão-2---08042026)
	- [Sessão 3 – 13/04/2026](#sessão-3---13042026)
	- [Sessão 4 – 15/04/2026](#sessão-4---15042026)
	- [Sessão 5 – 20/04/2026](#sessão-5---20042026)
	- [Sessão 6 – 22/04/2026](#sessão-6---22042026)
	- [Sessão 7 – 27/04/2026](#sessão-7---27042026)

__________________________________

## Planos de sessão:

#### Sessão 1 - 06/04/2026

* **Conteúdos do Manual:**
	* [Módulo 0 - Ambiente Tecnológico e Instalação de Ferramentas](sessao1_06042026.md)
* **Duração:** 3h
* **Objetivos da sessão:**
	* Apresentar a disciplina, metodologia de trabalho e calendário.
	* Familiarizar os participantes com o ambiente Linux utilizado nas sessões.
	* Instalar e configurar o ambiente completo de trabalho:
		* WSL + Ubuntu 24.04 LTS
		* Python + pip
		* Git
		* Visual Studio Code
		* Bibliotecas essenciais em Python
	* Confirmar que todos os participantes conseguem:
		* Aceder ao terminal Ubuntu
		* Executar comandos bash básicos
		* Criar e editar ficheiros com VS Code
* **Agenda detalhada:**
	* Boas‑vindas e apresentação (20 min)
	* Funcionamento do curso (20 min)
	* Preparação do ambiente de trabalho (2:00 h)
	* Encerramento da sessão (10 min)

#### Sessão 2 - 08/04/2026

* **Conteúdos do Manual**:
	* [Módulo 1 - Noções Básicas de Scripting](sessao2_08042026_modulo1.md)
	* [Módulo 2 - Utilização de linhas de comando](sessao2_08042026_modulo2.md)
	* [Módulo 3 - Comandos básicos em bash](sessao2_08042026_modulo3)
* **Duração:** 3h
* **Objetivos da sessão:
	* Compreender a relevância do scripting e os seus principais contextos de utilização;
	* Reconhecer o conceito de abstração e o seu papel nas linguagens de programação e scripting;
	* Distinguir linguagens compiladas de linguagens interpretadas;
	* Identificar a estrutura geral de um script;
	* Compreender o papel da linha de comandos como interface programável do sistema operativo;
	* Explorar, de forma colaborativa, conceitos introdutórios sobre linha de comandos.
* **Agenda detalhada:**
	* **Enquadramento e introdução ao tema** (10 min)
	* **Noções gerais de scripting** (25 min)
	* **Linguagens de programação, abstração e execução** (25 min)
	* **Atividade 1 — Introdução à Linha de Comandos** (60 min)
	* **Apresentações e discussão** (45 min)
	* **Encerramento da sessão** (5 min)

#### [Sessão 3 - 13/04/2026](sessao3_13042026.md)

* **Conteúdos do Manual**:
	* [Módulo 2 - Utilização de linhas de comando](sessao2_08042026_modulo2.md)
	* [Módulo 3 - Comandos básicos em bash](sessao2_08042026_modulo3.md)
	* [Módulo 3 - Apêndice sobre GIT](sessao3_13042026_modulo3.md)
* **Duração:** 3h
* **Objetivos da sessão:**
	* **Sistematizar e consolidar** os conteúdos explorados na Atividade 1, relativos à utilização da linha de comandos;
	* - Garantir que todos os participantes compreendem os **comandos fundamentais de navegação e manipulação de ficheiros** em Bash;
	* Introduzir, de forma estruturada, os princípios essenciais da **gestão de permissões**, incluindo o papel do `sudo`, `chmod` e `chown`;
	* Apresentar o **Git enquanto sistema de gestão de versões**, explicando a sua função no desenvolvimento moderno;
	* Estabelecer a relação entre **Git** e plataformas como GitHub;
	* Explorar, de forma colaborativa, os passos necessários para:
	    - criar um repositório Git,
	    - criar e gerir _branches_ (main, feature branches, etc.),
	    - adicionar ficheiros e registar alterações.
- **Agenda detalhada:**
	- **Revisão e sistematização dos conteúdos da Atividade 1** (20 min)
	- **Comandos básicos em Bash: síntese estruturada** (40 min)
	- **GIT: fundamentos, enquadramento e demonstração do fluxo de trabalho com GIT** (50 min)
	- **Atividade 2 - Trabalho orientado com Git** (50 min)
	- **Encerramento da sessão** (5 min)

#### [Sessão 4 - 15/04/2026](sessao4_15042026.md)

* **Conteúdos do Manual:**
	* [Módulo 4 – Acesso remoto e servidores](sessao4_15042026_modulo4.md)
	* [Módulo 5 - VIM](sessao4_15042026_modulo5.md)
* **Duração:** 3h
* **Objetivos da sessão:**
	* Introduzir o conceito de **servidor remoto**;
	* Compreender as **diferenças entre acesso gráfico e acesso via linha de comandos** a servidores;
	* Apresentar os **princípios básicos de segurança** associados ao acesso remoto a servidores;
	* Demonstrar o uso da linha de comandos para:
		* aceder a um servidor remoto através de `ssh`,
		* transferir ficheiros com `scp`,
		* editar ficheiros em ambiente remoto;
	* Consolidar os **fundamentos de utilização do VIM**, com foco na edição eficiente de ficheiros em ambiente terminal;
* **Agenda detalhada:**
	* Conclusão da atividade iniciada na sessão anterior e discussão dos resultados. (60 min)
	* **Enquadramento: acesso a computadores remotos (10 min)
	* **Acesso a servidores remotos** (20 min)
		* Acesso gráfico (WinSCP, FileZilla)
		* Acesso via linha de comandos
		* Vantagens e limitações de cada abordagem
	* **Demonstração prática: SSH** (20 min)
	* **Demonstração prática: SCP** (20 min)
	* **VIM:** demonstração prática (45 min)
	* **Encerramento da sessão** (5 min)


#### [Sessão 5 - 20/04/2026](sessao5_20042026.md)

* ***Conteúdos do Manual**:
	* [Módulo 1 - Noções Básicas de Scripting](sessao2_08042026_modulo1.md)
	* [Módulo 2 - Utilização de linhas de comando](sessao2_08042026_modulo2.md)
	* [Módulo 3 - Comandos básicos em bash](sessao2_08042026_modulo3)
* **Duração:** 3h
* **Objetivos da sessão:**
	* Desenvolver competências ao nível da programação com Bash através da resolução de exercícios práticos;
	* Aplicar de forma integrada conhecimentos de **linha de comandos e scripting em Bash**;
* **Agenda detalhada**:
	* Continuação e consolidação de VIM (30 min)
	* Apresentação da Atividade 3 (15 min)
	* Realização da atividade em grupo (80 min)
	* Apresentação dos resultados pelos grupos (50 min)
	* Encerramento da sessão (5 min)


#### [Sessão 6 - 22/04/2026](sessao6_22042026.md)

* **Conteúdos do Manual:**
	* [Módulo 7 - Web Scraping com Python](sessao6_22042026_modulo7.md)
* **Duração:** 3h
* **Objetivos da sessão:**
	* Compreender o conceito de **Web Scraping** e o seu enquadramento no ecossistema Python;
	- Distinguir **Web Scraping de APIs** e clarificar contextos de utilização de cada abordagem;
	- Identificar **boas práticas e limitações** associadas à recolha automática de dados da Web;
	- Demonstrar o uso de bibliotecas Python para Web Scraping;
	- Desenvolver competências práticas na **extração e tratamento básico de informação proveniente de páginas Web**;
	- Aplicar os conhecimentos adquiridos através da **resolução de exercícios práticos orientados**.
- **Agenda detalhada:**
	- Enquadramento teórico: o que é Web Scraping? (20 min)
	- Tecnologias e ferramentas Python para Web Scraping (20 min)
	- Demonstração prática: Web Scraping com Python (40 min)
	- Exercícios práticos orientados (70 min)
	- Discussão e síntese dos resultados (20 min)
	- Encerramento da sessão (10 min)

#### [Sessão 7 - 27/04/2026](sessao7_27042026.md)

* **Conteúdos do Manual:**
	* [Módulo 8 - Acesso a dados através de APIs](sessao7_27042026_modulo8.md)
* **Duração:** 3h
* **Objetivos da sessão:**
	* Compreender o que é uma **API** e o seu papel na disponibilização de dados;
	- Demonstrar a utilização de **Python para efetuar pedidos a APIs** e processar as respostas;
	- Desenvolver competências práticas na **recolha, tratamento e armazenamento de dados obtidos via APIs**;
	- Aplicar os conceitos adquiridos através da **resolução de exercícios práticos orientados**.
- **Agenda detalhada:**
	- Enquadramento teórico: o que são APIs? (20 min)
	- Princípios básicos de comunicação com APIs (20 min)
	- Demonstração prática: consumo de uma API com Python (40 min)
	- Exercícios práticos orientados (70 min)
	- Discussão e síntese dos resultados (20 min)
	- Encerramento da sessão (10 min)