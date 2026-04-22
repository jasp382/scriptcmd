#!/bin/bash

# ============================
# Processamento de logs de acesso
# ============================

# Flags
FORCE=false
INPUT_DIR=""

# ============================
# Processar argumentos
# ============================
while getopts "i:f" opt; do
  case $opt in
    i)
      INPUT_DIR="$OPTARG"
      ;;
    f)
      FORCE=true
      ;;
    *)
      echo "Uso: $0 -i pasta_logs [-f]"
      exit 1
      ;;
  esac
done

# ============================
# Validação de argumentos
# ============================
if [ -z "$INPUT_DIR" ]; then
  echo "Erro: deve indicar a pasta com os logs usando -i"
  exit 1
fi

if [ ! -d "$INPUT_DIR" ]; then
  echo "Erro: pasta '$INPUT_DIR' não existe"
  exit 1
fi

# ============================
# Estrutura de pastas
# ============================
BASE_DIR="logs"
RAW_DIR="$BASE_DIR/raw"
PROCESSED_DIR="$BASE_DIR/processed"
REPORTS_DIR="$BASE_DIR/reports"

if [ -d "$BASE_DIR" ] && [ "$FORCE" = true ]; then
  echo "⚠ A recriar estrutura de pastas..."
  rm -rf "$BASE_DIR"
fi

if [ ! -d "$BASE_DIR" ]; then
  echo "📁 A criar estrutura de pastas..."
  mkdir -p "$RAW_DIR" "$PROCESSED_DIR" "$REPORTS_DIR"
else
  echo "📁 Estrutura já existe — a reutilizar"
fi

# ============================
# Copiar logs raw
# ============================
cp "$INPUT_DIR"/access*.log "$RAW_DIR"/ 2>/dev/null

if [ $? -ne 0 ]; then
  echo "Erro: não foi possível copiar ficheiros access*.log"
  exit 1
fi

# ============================
# Processamento
# ============================

ALL_LOGS="$PROCESSED_DIR/all_access.log"
FAILED_LOGINS="$PROCESSED_DIR/login_failed.log"
REPORT="$REPORTS_DIR/relatorio.txt"

# Consolidar logs
cat "$RAW_DIR"/access*.log > "$ALL_LOGS"

# Filtrar falhas
grep "LOGIN_FAILED" "$ALL_LOGS" > "$FAILED_LOGINS"

# ============================
# Estatísticas
# ============================

TOTAL=$(wc -l < "$ALL_LOGS")
SUCCESS=$(grep -c "LOGIN_SUCCESS" "$ALL_LOGS")
FAILED=$(grep -c "LOGIN_FAILED" "$ALL_LOGS")

# ============================
# Relatório
# ============================

{
  echo "Relatório de acessos"
  echo "===================="
  echo
  echo "Total de tentativas de login: $TOTAL"
  echo "Logins com sucesso:           $SUCCESS"
  echo "Logins falhados:              $FAILED"
  echo
  echo "Número de acessos por utilizador:"
  echo "---------------------------------"
  echo
  cut -d' ' -f2 "$ALL_LOGS" | sort | uniq -c | sort -nr
} > "$REPORT"

echo "✅ Processamento concluído."
echo "📄 Relatório gerado em: $REPORT"