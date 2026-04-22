#!/bin/bash

# ============================
# Definição do array de pastas
# ============================

DIRECTORIOS=(
  #"/home"
  "/var/log"
  "/tmp"
  "/backup"
)

# ============================
# Contadores
# ============================

TOTAL=${#DIRECTORIOS[@]}
EXISTENTES=0

echo "A analisar pastas..."
echo

# ============================
# Percorrer o array
# ============================

for DIR in "${DIRECTORIOS[@]}"; do

  if [ -d "$DIR" ]; then
    TAMANHO=$(du -sh "$DIR" 2>/dev/null | cut -f1)
    printf "%-10s -> %s\n" "$DIR" "$TAMANHO"
    ((EXISTENTES++))
  else
    printf "%-10s -> pasta não encontrada\n" "$DIR"
  fi

done

# ============================
# Resumo final
# ============================

echo
echo "Resumo:"
echo "Pastas analisadas: $TOTAL"
echo "Pastas existentes: $EXISTENTES"
