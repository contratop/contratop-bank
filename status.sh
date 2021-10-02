## Centro de control de la banca online de Contratop
## Solo panel administrativo

clear
unset
unset credit

echo "Panel de operaciones de ContratopBank"
echo "Status View Only"

echo 'ContratopBank Accounts: 2'
	PS3='Select account: '
options=("Pokeinalover" "Test-Account" "Quit")
select opt in "${options[@]}"
do
    case $opt in


          "Pokeinalover")
          
          # get info
          viewcredit=$(curl https://raw.githubusercontent.com/contratop/contratop-bank/main/pokeinalover-account/credit.txt)

            echo "Credito en el servidor: $viewcredit"
            echo ""
            echo "Historial de transacciones:"
            curl https://raw.githubusercontent.com/contratop/contratop-bank/main/pokeinalover-account/transactions.txt
            echo ""
            exit




         ;;


        "Test-Account")

# get info
          viewcredit=$(curl https://raw.githubusercontent.com/contratop/contratop-bank/main/test-account/credit.txt)

            echo "Credito en el servidor: $viewcredit"
            echo ""
            echo "Historial de transacciones:"
            curl https://raw.githubusercontent.com/contratop/contratop-bank/main/test-account/transactions.txt
            echo ""
            exit




        ;;


        "Quit")
		clear
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
