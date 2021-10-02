## Centro de control de la banca online de Contratop
## Solo panel administrativo

clear
unset
unset credit

echo "Panel de operaciones de ContratopBank"

echo 'ContratopBank Accounts: 3'
	PS3='Select account: '
options=("Contratop" "Pokeinalover" "Test-Account" "Quit")
select opt in "${options[@]}"
do
    case $opt in






        "Contratop")

bash "contratop-bank/contratop-account/control.sh"
exit
		
				
            ;;


          "Pokeinalover")

bash "contratop-bank/pokeinalover-account/control.sh"
exit




         ;;


        "Test-Account")

bash "contratop-bank/test-account/control.sh"
exit



        ;;


        "Quit")
		clear
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
