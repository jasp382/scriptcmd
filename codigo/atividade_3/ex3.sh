#!/bin/bash

# ============================
# Ficheiro de entrada
# ============================
USER_FILE="users.txt"

# ============================
# Verificações iniciais
# ============================
if [ ! -f "$USER_FILE" ]; then
  echo "Erro: ficheiro $USER_FILE não encontrado"
  exit 1
fi

# ============================
# Obter lista de departamentos distintos
# ============================
DEPARTMENTS=$(cut -d' ' -f2 "$USER_FILE" | sort | uniq)

# ============================
# Criar estrutura por departamento
# ============================
for DEPT in $DEPARTMENTS; do
  echo "📁 A criar departamento: $DEPT"
  mkdir -p "$DEPT"
done

# ============================
# Criar pastas e ficheiros por utilizador
# ============================
for LINE in $(cat "$USER_FILE"); do
  :
done

# Como o ciclo acima não separa colunas corretamente,
# usamos um ciclo mais adequado para leitura linha a linha
while read -r USER DEPT; do

  USER_DIR="$DEPT/$USER"

  echo "👤 A configurar utilizador: $USER ($DEPT)"

  # Criar pasta do utilizador
  mkdir -p "$USER_DIR"

  # Criar ficheiro de configuração
  CONFIG_FILE="$USER_DIR/config.txt"

  {
    echo "user=$USER"
    echo "department=$DEPT"
    echo "created_at=$(date '+%Y-%m-%d %H:%M:%S')"
    echo "welcome_message=Bem-vindo ao sistema, $USER"
  } > "$CONFIG_FILE"

done < "$USER_FILE"

echo "✅ Configuração de utilizadores concluída."
``
