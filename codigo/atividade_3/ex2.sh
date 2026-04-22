#!/bin/bash

# ============================
# Verificação de argumentos
# ============================

if [ $# -ne 1 ]; then
  echo "Uso: $0 pasta_destino ficheiro_com_urls"
  exit 1
fi

if [ $# -ne 2]; then
  echo "Uso: $0 pasta_destino ficheiro_com_urls"
  exit 1
fi

DESTINO="$1"
URL_FILE="$2"

# ============================
# Verificações iniciais
# ============================

if [ ! -f "$URL_FILE" ]; then
  echo "Erro: ficheiro $URL_FILE não encontrado"
  exit 1
fi

# Criar pasta de destino se não existir
if [ ! -d "$DESTINO" ]; then
  echo "📁 A criar pasta de destino: $DESTINO"
  mkdir -p "$DESTINO"
fi

# ============================
# Processar cada linha do ficheiro
# ============================

while read -r URL; do

  # Ignorar linhas vazias
  [ -z "$URL" ] && continue

  # Extrair continente a partir do URL
  CONTINENTE=$(echo "$URL" | cut -d'/' -f4)

  # Criar pasta do continente, se necessário
  mkdir -p "$DESTINO/$CONTINENTE"

  # Descarregar ficheiro para a pasta correta
  echo "⬇ A descarregar para $CONTINENTE:"
  echo "$URL"
  echo "$DESTINO/$CONTINENTE"
  wget -q -P "$DESTINO/$CONTINENTE" "$URL"

done < "$URL_FILE"

echo "✅ Download concluído."