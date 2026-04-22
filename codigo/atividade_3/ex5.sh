
#!/bin/bash

# ============================
# Menu interativo
# ============================

PS3="Escolha uma opção: "

OPCOES=(
  "Listar o conteúdo do diretório atual"
  "Criar um novo diretório"
  "Mostrar espaço em disco do diretório atual"
  "Mostrar data e hora"
  "Sair"
)

while true; do

  echo
  echo "===== Menu ====="
  select OPCAO in "${OPCOES[@]}"; do

    case $REPLY in

      1)
        echo
        echo "📂 Conteúdo do diretório atual:"
        ls -lh
        break
        ;;

      2)
        echo
        read -p "Nome do diretório a criar: " DIR

        if [ -z "$DIR" ]; then
          echo "⚠ Nome inválido."
        elif [ -d "$DIR" ]; then
          echo "⚠ O diretório já existe."
        else
          mkdir "$DIR"
          echo "✅ Diretório '$DIR' criado."
        fi
        break
        ;;

      3)
        echo
        echo "💾 Espaço em disco do diretório atual:"
        du -sh .
        break
        ;;

      4)
        echo
        echo "🕒 Data e hora atuais:"
        date
        break
        ;;

      5)
        echo
        echo "👋 A sair do programa."
        exit 0
        ;;

      *)
        echo "⚠ Opção inválida. Tente novamente."
        ;;
    esac

  done

done
