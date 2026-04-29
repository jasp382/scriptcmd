
## Manual do Formando

## Disciplina: _Linguagens de Scripting e Linha de Comandos_

### Módulo 4 — Acesso remoto a servidores a partir da linha de comandos

---

## 1. Enquadramento geral: acesso a servidores remotos

O **acesso remoto a servidores** permite trabalhar num computador que não se encontra fisicamente presente, recorrendo a uma ligação de rede. 

Este tipo de acesso é extremamente comum em contextos profissionais, nomeadamente em:

* administração de sistemas;
* desenvolvimento de software;
* investigação científica;
* infraestruturas cloud;
* análise e processamento de dados.

Na prática, um servidor remoto é um computador que disponibiliza serviços e recursos a partir de uma localização diferente, sendo acedido através da rede de forma controlada e segura.

---
## 2. Formas de acesso remoto

Existem duas abordagens principais para aceder a um servidor remoto:  **acesso gráfico** e **acesso através da linha de comandos**.

### 2.1 Acesso gráfico (GUI)


O acesso gráfico a um servidor remoto utiliza **interfaces visuais completas**, permitindo ao utilizador interagir com o sistema remoto de forma semelhante a um computador local, através de janelas, menus e ambiente de trabalho gráfico.

Este tipo de acesso pode assumir duas formas distintas:

- acesso gráfico para **gestão de ficheiros**;
- acesso gráfico ao **ambiente de trabalho completo** do servidor remoto.

#### Acesso gráfico para gestão de ficheiros

Neste caso, o utilizador acede aos ficheiros e diretórios do servidor remoto através de aplicações gráficas, sem iniciar uma sessão completa no ambiente de trabalho remoto.

**Características:**

- navegação visual por pastas e ficheiros;
- transferência de ficheiros por arrastar‑e‑largar;
- abordagem mais intuitiva e acessível.

**Exemplos de aplicações:**

- WinSCP;
- FileZilla.

Este tipo de acesso é normalmente baseado em protocolos como **SFTP**, funcionando como uma alternativa gráfica à cópia de ficheiros via linha de comandos.

Apesar de prático, este modo de acesso oferece **controlo limitado** sobre o sistema remoto e não é adequado para tarefas complexas ou automatizadas.

#### Acesso gráfico ao ambiente de trabalho remoto

Alguns protocolos permitem estabelecer uma ligação que disponibiliza **um ambiente gráfico completo da máquina remota**, incluindo o seu desktop, aplicações e janelas.

**Exemplos de protocolos e tecnologias:**

- **RDP (Remote Desktop Protocol)**;
- **xRDP** — implementação de RDP comum em servidores Linux;
- VNC (Virtual Network Computing).

Neste modelo, o utilizador interage com o sistema remoto como se estivesse fisicamente em frente à máquina.

**Vantagens:**

- experiência visual completa;
- útil para tarefas administrativas em modo gráfico;
- relevante em contextos de suporte técnico ou configuração inicial.

**Limitações:**

- maior consumo de recursos;
- desempenho dependente da ligação de rede;
- menor adequação à automatização;
- menos comum em servidores de produção.


➡️ Embora o acesso gráfico seja útil em alguns contextos, **não substitui o acesso via linha de comandos**, sobretudo em ambientes profissionais, de scripting e administração de sistemas.

---
### 2.2 Acesso pela linha de comandos (CLI)

O acesso via **linha de comandos** utiliza instruções escritas no terminal para comunicar diretamente com o servidor remoto.

**Ferramentas comuns:**

- `ssh` — acesso remoto ao terminal;
- `scp` — cópia de ficheiros;
- `rsync` — sincronização de dados.

**Vantagens:**

- maior precisão e controlo;
- possibilidade de automatização;
- essencial em servidores e ambientes profissionais;
- integração natural com scripts e workflows técnicos.

➡️ O acesso por linha de comandos é a abordagem **privilegiada nesta disciplina**.

---
## 3. Enquadramento técnico do acesso remoto


Para que um servidor possa ser acedido remotamente, não basta conhecer o endereço e as credenciais. 

É necessário que **o servidor e a rede estejam devidamente configurados**.

### 3.1 Configuração do servidor

O servidor tem de cumprir algumas condições essenciais:

- o serviço pretendido (por exemplo, SSH) deve estar ativo;
- o servidor deve aceitar ligações externas;
- as credenciais devem estar corretamente configuradas.

---
### 3.2 Configuração da rede


A infraestrutura de rede também desempenha um papel crítico:

- a rede deve permitir tráfego de entrada nas portas necessárias;
- pode ser necessária configuração de encaminhamento (port forwarding);
- algumas redes institucionais bloqueiam acessos externos por defeito.
---
### 3.3 Segurança no acesso remoto

Um servidor acessível externamente torna‑se um potencial alvo. Configurações incorretas podem introduzir **riscos significativos de segurança**.

**Boas práticas essenciais:**

- configurar corretamente a firewall;
- permitir apenas as portas estritamente necessárias;
- restringir o acesso por origem (IP ou rede);
- evitar configurações “abertas por conveniência”.

---
## 4. Protocolos de acesso remoto

### 4.1 O que é um protocolo?


Em informática, um protocolo é um **conjunto de regras que define como dois sistemas comunicam**, especificando:

- o formato dos dados;
- o modo de envio e receção;
- o comportamento esperado de cada parte.

Sem protocolos, a comunicação entre sistemas seria impossível ou inconsistente.

---

### 4.2 Protocolos relevantes para acesso remoto


Alguns protocolos particularmente importantes neste contexto são:

- **SSH (Secure Shell)**: Protocolo seguro para acesso remoto ao terminal de um computador.

- **SFTP (SSH File Transfer Protocol)**: Protocolo de transferência de ficheiros baseado em SSH 
	- utilizado por aplicações como FileZilla e WinSCP.

- **FTP**: Protocolo de transferência de ficheiros mais antigo e menos seguro.

➡️ Sempre que possível, devem ser utilizados **protocolos seguros (SSH/SFTP)**.

---

## 6. Acesso remoto na linha de comandos

### 6.1 SSH — acesso ao servidor

O comando `ssh` permite estabelecer uma sessão remota num servidor:

```bash

ssh utilizador@servidor
```

Este comando abre um terminal remoto, a partir do qual é possível:

- executar comandos;
- editar ficheiros;
- gerir serviços;
- trabalhar como se estivéssemos fisicamente no servidor.

### 6.2 SCP — cópia de ficheiros

O comando `scp` permite copiar ficheiros entre a máquina local e o servidor remoto:

```Bash
scp ficheiro.txt utilizador@servidor:/caminho/destino
```

ou, no sentido inverso:

```Bash
scp utilizador@servidor:/caminho/ficheiro.txt .
```

Este mecanismo é simples, seguro e amplamente utilizado em ambientes técnicos.

