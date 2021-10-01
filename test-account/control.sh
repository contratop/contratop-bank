# ContratopBank 2021 Protected Transactions
# Finantial Tech Virtual



## save credit.txt as variable
credit=$(curl https://raw.githubusercontent.com/contratop/contratop-bank/main/test-account/credit.txt)


echo "Fondos de test-account: " $credit
echo ""



## display transaction menu
echo "Seleccione el tipo de transaccion"

echo Que funcion vas a realizar
	PS3='Operaciones para test-account: '
options=("Agregar" "Retirar" "Quit")
select opt in "${options[@]}"
do
    case $opt in






        "Agregar")

            read -p "Seleccione el monto a ingresar: " modifycred
                num=$(($credit + $modifycred))


		
				
        ;;


        "Retirar")






        ;;


        "Quit")
		clear
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
