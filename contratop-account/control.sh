# ContratopBank 2021 Protected Transactions
# Finantial Tech Virtual



## save credit.txt as variable
credit=$(curl https://raw.githubusercontent.com/contratop/contratop-bank/main/contratop-account/credit.txt)


echo "Fondos de Contratop: " $credit
echo ""



## display transaction menu
echo "Seleccione el tipo de transaccion"


	PS3='Operaciones para Contratop ADMIN: '
options=("Agregar" "Retirar" "Quit")
select opt in "${options[@]}"
do
    case $opt in






        "Agregar")

            read -p "Seleccione el monto a ingresar: " modifycred
            echo "Realizando la operacion... espere"
                newcredit=$(($credit + $modifycred))
            echo "$newcredit" > onlinebank/contratop-account/credit.txt
            sleep 1
            echo ""
            echo "Actualizando cuenta online de Contratop..."
            git add onlinebank/contratop-account/credit.txt
            git commit -m "Account Updated"
            git push
            echo ""
            echo "Transaccion completada"
            


		
				
        ;;


        "Retirar")

            read -p "Seleccione el monto a retirar: " modifycred   
            echo "Realizando la operacion... espere"
                newcredit=$(($credit - $modifycred))
            echo "$newcredit" > onlinebank/contratop-account/credit.txt
            sleep 1
            echo ""
            echo "Actualizando cuenta online de Contratop..."
            git add onlinebank/contratop-account/credit.txt
            git commit -m "Account Updated"
            git push
            echo ""
            echo "Transaccion completada"




        ;;


        "Quit")
		clear
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
