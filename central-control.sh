## Centro de control de la banca online de Contratop
## Solo panel administrativo

echo "Panel de operaciones de ContratopBank"


	PS3='ContratopBank Accounts: 3'
options=("Contratop" "Pokeinalover" "Test-Account" "Quit")
select opt in "${options[@]}"
do
    case $opt in






        "Contratop")

bash "onlinebank/contratop-account/control.sh"
exit
		
				
            ;;


          "Pokeinalover")

bash "onlinebank/pokeinalover-account/control.sh"
exit




         ;;


        "Test-Account")

bash "onlinebank/test-account/control.sh"
exit



        ;;


        "Quit")
		clear
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
