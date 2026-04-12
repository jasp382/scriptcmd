

## Manual do Formando

## Disciplina: _Linguagens de Scripting e Linha de Comandos_

### Módulo 3: Comandos básicos em bash
_______________________________

## 1. Introdução ao Módulo:

O Bash fornece um conjunto de comandos fundamentais que permitem ao utilizador interagir com o sistema operativo de forma direta e eficiente. Estes comandos constituem a base do trabalho diário em linha de comandos, permitindo navegar no sistema de ficheiros, manipular diretórios e ficheiros, inspecionar conteúdos e executar operações simples de leitura.

A prática com estes comandos proporciona uma compreensão mais profunda da estrutura do sistema — uma competência essencial para automatização, scripting e administração.

___________________________

## 2. Navegação na linha de comandos:

A navegação é o primeiro passo para trabalhar confortavelmente no Bash. Significa “deslocarmo‑nos” pelo sistema de ficheiros, tal como faríamos num explorador gráfico, mas utilizando apenas instruções textuais.


##### 2.1. O diretório atual: pwd

O comando **`pwd`** (_print working directory_) mostra onde estamos no sistema de ficheiros.

```Shell
pwd
```

Exemplo de saída:

```
/home/utilizador
```


Saber onde estamos é fundamental, pois a maioria dos comandos opera sobre o diretório atual.

##### 2.2. Listar conteúdos: ls

O comando **`ls`** lista ficheiros e pastas.

```Shell
ls
```

Opções úteis:

- `ls -l` — formato longo (permissões, tamanho, proprietário, data)
- `ls -a` — mostra ficheiros ocultos (começam por `.`)
- `ls -lh` — tamanhos legíveis (KB, MB, GB)

Exemplo:

```Shell
ls -lha
```

##### 2.3. Mudar de diretório: cd

O comando **`cd`** permite entrar noutro diretório.

**Casos mais comuns**

- `cd pasta` — entra na pasta indicada
- `cd ..` — sobe um nível (diretório pai)
- `cd .` — mantém-se no mesmo sítio (raro, mas útil em scripts)
- `cd /caminho/absoluto` — vai diretamente para um caminho específico
- `cd` — volta para a _home_ do utilizador
- `cd -` — volta ao diretório anterior

Exemplos:

```Shell
cd Documentos
cd ..
cd /var/log
cd -
```

##### 2.4. Caminhos absolutos e relativos

**Caminho absoluto**

- começa sempre por `/`
- indica a localização desde a raiz do sistema

Exemplo:

```Shell
/usr/local/bin
```

**Caminho relativo**

- parte do diretório atual
- utiliza `.` (atual) e `..` (pai)

Exemplo:

```Shell
../Imagens/fotos/
```


##### 2.5. Ficheiros ocultos

No Bash (e em sistemas Unix), ficheiros que começam por `.` são ocultos.

Exemplos:

- `.bashrc`
- `.config/`

Para os ver, usamos:

```Shell
ls -a
```


##### 2.6. Autocompletar com TAB

O Bash permite completar nomes automaticamente:

- Escrever parte do nome e premir **TAB**
- Se houver múltiplos resultados, premir **TAB** duas vezes mostra opções.

Isto aumenta a velocidade e reduz erros.

##### 2.7. Histórico e setas

- **Seta para cima**: recupera comandos anteriores
- **Seta para baixo**: avança no histórico
- **Ctrl + R**: pesquisa no histórico

Exemplo de pesquisa:

```Shell
(reverse-i-search)`ls': ls -lha
```


_______________________________________________________________________

## 3. Manipulação de ficheiros:

Depois de aprender a navegar, o próximo passo é aprender a criar, copiar, mover e apagar ficheiros e diretórios.

##### 3.1. Criar ficheiros: touch

```Shell
touch nome.txt
```

##### 3.2. Criar pastas: mkdir

```Shell
mkdir pasta
```

Criar vários diretórios:

```Shell
mkdir pasta1 pasta2 pasta3
```

Criar estruturas completas:

```Shell
mkdir -p projeto/src/assets
```

##### 3.3. Copiar ficheiros

```Shell
cp origem.txt destino.txt
```

Copiar diretórios inteiros:

```Shell
cp -r pasta1 pasta2
```

##### 3.4. Mover e renomear: mv

Renomear:

```Shell
mv antigo.txt novo.txt
```

Mover:


```Shell
mv ficheiro.txt /outro/local/
```

##### 3.5. Apagar ficheiros: rm

```Shell
rm ficheiro.txt
```

Apagar diretórios com conteúdo:

```Shell
rm -r pasta
```

⚠️ **Perigo**:  
**Não há reciclagem. Não há “desfazer”.**  
Usar com cuidado, especialmente `rm -rf`.

____________________________________________

## 4. Leitura de dados - ver conteúdo de ficheiros:

##### **`cat`** — mostra tudo de uma vez:

```Shell
cat texto.txt  
```

##### **`less`** — permite navegar página a página:

```Shell
less texto.txt  
```

Comandos dentro do _less_:

- setas: navegar
- `q`: sair

##### **`head`** e `tail`** — primeiras/últimas linhas:

```Shell
head texto.txt  

tail texto.txt  

tail -f log.txt # seguir logs em tempo real
```

_________________________________________________

## 5. Permissões, privilégios e sudo

O Linux implementa um sistema de permissões para garantir segurança e isolamento entre utilizadores. Cada ficheiro e diretório tem:

- **utilizador proprietário**
- **grupo**
- **permissões** de leitura (r), escrita (w), execução (x)

Exemplo:

```Shell
-rwxr-x---
```

Interpretação:

1. Primeiro conjunto (rwx): o proprietário pode ler, escrever e executar.
2. Segundo (r-x): o grupo pode ler e executar.
3. Terceiro (---): outros utilizadores não têm acesso.


##### **`sudo`: executar comandos como superutilizador**

Algumas ações requerem permissões elevadas, como:

- instalar software
- alterar ficheiros de configuração do sistema
- gerir utilizadores
- manipular serviços

O comando **`sudo`** (_superuser do_) permite executar uma instrução com privilégios administrativos:

```Shell
sudo apt update
```

O sudo **não dá acesso total permanente**; apenas eleva um comando isolado, após verificação de autorização.


Se surgir:

```Shell
Permission denied
```


Causas possíveis:

- falta de permissões sobre o ficheiro
- tentativa de executar algo sem `sudo`
- ausência de direitos de execução (`chmod +x`)


### 5.1 Alteração de permissões em Bash: chmod e chown

Num sistema operativo baseado em Unix, como Linux, cada ficheiro e diretório possui um conjunto de **permissões** que determinam quem pode ler, escrever ou executar esse recurso. Este modelo de segurança é fundamental para evitar alterações não autorizadas, proteger informação sensível e organizar o trabalho entre vários utilizadores.

As permissões estão divididas em **três grupos**:

1. **Utilizador (owner)** – o criador do ficheiro.
2. **Grupo (group)** – utilizadores que pertencem ao mesmo grupo.
3. **Outros (others)** – todos os restantes utilizadores do sistema.

Cada grupo pode ter três tipos de permissões:

- **r** — leitura (_read_)
- **w** — escrita (_write_)
- **x** — execução (_execute_)

Num exemplo típico, ao fazer `ls -l`, podemos ver algo como:

```Shell
-rwxr-x---
```

Isto significa:

- O **utilizador** tem `rwx` → pode ler, escrever e executar.
- O **grupo** tem `r-x` → pode ler e executar, mas não escrever.
- Os **outros** não têm qualquer permissão.

Nesta secção veremos como alterar estes valores utilizando os comandos **`chmod`** (alterar permissões) e **`chown`** (alterar proprietário e grupo).


##### 5.1.1 Alterar permissões com chmod

O comando `chmod` (_change mode_) permite modificar as permissões de ficheiros e diretórios. Pode ser usado de duas formas: **modo simbólico** (letras) ou **modo octal** (números). Ambos são comuns, mas o modo numérico é o mais direto e o mais usado em scripting.

**MODO OCTAL (numérico)

Cada permissão corresponde a um valor numérico:

- **r = 4**
- **w = 2**
- **x = 1**

Ao somar estes valores, obtemos a permissão final.

A estrutura é:

```
chmod XYZ ficheiro
```

Onde:
- **X** = permissões do utilizador
- **Y** = permissões do grupo
- **Z** = permissões dos outros

**Exemplo 1: chmod 755 /ficheiro.txt**

```Shell
sudo chmod 755 /ficheiro.txt
```

O que significa?

- **7 = 4+2+1 = rwx** → o utilizador pode tudo
- **5 = 4+1 = r-x** → o grupo pode ler e executar
- **5 = 4+1 = r-x** → os outros podem ler e executar

Este é um modo muito comum para scripts e programas executáveis, permitindo que possam ser corridos por qualquer utilizador, mas apenas modificados pelo proprietário.

**Exemplo 2: `chmod 644 documento.txt`**

```Shell
sudo chmod 644 documento.txt
```

Interpretação:

- **6 = 4+2 = rw-** → o utilizador pode ler e escrever
- **4 = r--** → grupo apenas lê
- **4 = r--** → outros apenas lêem

Este modo é típico em ficheiros de texto, documentos e configurações que não devem ser alterados por outros utilizadores.

**Exemplo 3: `chmod 700 pasta/`**

```Shell
sudo chmod 700 pasta/
```

Isto significa que **apenas o proprietário** tem acesso à pasta (ler, escrever e executar). Todos os outros ficam completamente excluídos.

É útil para diretórios privados (por exemplo: pastas pessoais com dados sensíveis).

**MODO SIMBÓLICO**

O modo simbólico usa letras para indicar permissões e operadores (+, -, =) para as adicionar, remover ou definir.

Exemplos:

```Shell
# Adicionar permissão de execução ao utilizador
chmod u+x script.sh

# Remover escrita do grupo
chmod g-w relatorio.txt

# Dar leitura a todos
chmod a+r dados.csv
```

Neste modo:

- **u** = utilizador
- **g** = grupo
- **o** = outros
- **a** = todos (_all_)

É útil para alterações rápidas, especialmente durante o desenvolvimento.


##### 5.1.2 Alterar proprietário e grupo com chown


Enquanto `chmod` altera as permissões, o comando `chown` (_change owner_) altera **quem** é o dono de um ficheiro ou diretório.

A sintaxe básica é:

```Shell
chown novo_utilizador ficheiro
```

Ou, para alterar também o grupo:

```Shell
chown novo_utilizador:grupo ficheiro
```

Como estas operações afetam a segurança do sistema, normalmente é necessário usar **sudo**.

Exemplos:

```Shell
# Exemplo 1: Mudar o proprietário
sudo chown joaquim relatório.txt
# Agora o utilizador joaquim é o dono do ficheiro.

# Exemplo 2: Mudar proprietário e grupo
sudo chown ana:professores trabalho.docx
# O proprietário passa a ser ana
# O grupo passa a ser professores

# Exemplo 3: Aplicar recursivamente
# Se quisermos alterar a propriedade de uma pasta e de todo o seu conteúdo:
sudo chown -R jo
# A opção **`-R`** significa _recursivo_.
```

### 5.2 O papel do sudo nas permissões

Em sistemas Unix, o utilizador normal tem privilégios limitados. A ferramenta **`sudo`** permite executar um comando com privilégios de administrador (_root_) **apenas quando necessário**, sem alterar permanentemente o nível de acesso do utilizador.

Sempre que tentamos alterar ficheiros do sistema, modificar permissões de outros utilizadores, instalar software ou alterar configurações globais, o sistema exige privilégios elevados:

- se tentarmos `chmod` num ficheiro do sistema → erro: _“Operation not permitted”_
- se tentarmos `chown` sem privilégios → erro: _“Permission denied”_

Por isso usamos:

```Shell
sudo chmod 755 /etc/servico/config.cfg

sudo chown root:root /usr/local/bin/script.sh
```

O sudo permite:

- segurança (não se usa root permanentemente)
- rastreabilidade (cada ação fica registada)
- controlo granular (cada utilizador pode ter permissões `sudo` diferentes)