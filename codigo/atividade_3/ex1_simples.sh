#INPUT_DIR="/home/luffy/code/scriptcmd/dados/atv3_ex1"
#BASE_DIR="/home/luffy/code/logs"
INPUT_DIR=""
BASE_DIR=""
FORCE=false

# ============================
# Processar argumentos
# ============================
while getopts "i:o:f" opt; do
  case $opt in
    i)
      INPUT_DIR="$OPTARG"
      ;;
    o)
      BASE_DIR="$OPTARG"
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
# Estrutura de pastas
# ============================

RAW_DIR="$BASE_DIR/raw"
#RAW_DIR="/home/luffy/code/logs/raw"
PROCESSED_DIR="$BASE_DIR/processed"
REPORTS_DIR="$BASE_DIR/reports"

echo "📁 A criar estrutura de pastas..."
echo "$RAW_DIR"
echo "$PROCESSED_DIR"
mkdir -p "$RAW_DIR" "$PROCESSED_DIR" "$REPORTS_DIR"


# ============================
# Copiar logs raw
# ============================
cp "$INPUT_DIR"/access*.log "$RAW_DIR"/ 2>/dev/null


# ============================
# Processamento
# ============================

ALL_LOGS="$PROCESSED_DIR/all_access.log"
FAILED_LOGINS="$PROCESSED_DIR/login_failed.log"
REPORT="$REPORTS_DIR/relatorio.txt"

# Consolidar logs
# Reune logs de todos os ficheiros num so
echo "Reune todos os logs num unico ficheiro"
cat "$RAW_DIR"/access*.log > "$ALL_LOGS"

# Filtrar falhas
echo "Cria um ficheiro com as tentativas falhadas"
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