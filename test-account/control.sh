# ContratopBank 2021 Protected Transactions
# Finantial Tech Virtual



## save credit.txt as variable and assign variable, and delete credtemp
wget https://raw.githubusercontent.com/contratop/contratop-bank/main/test-account/credit.txt -O credtemp.txt
credit=$(cat credtemp.txt)
rm credtemp.txt

clear

echo "Fondos de test-account: " $credit
echo ""



## display transaction menu
echo "Seleccione el tipo de transaccion"


	PS3='Operaciones para test-account: '
options=("Agregar" "Retirar" "Quit")
select opt in "${options[@]}"
do
    case $opt in






        "Agregar")

            tstype=Ingreso
            read -p "Seleccione el monto a ingresar: " modifycred
            read -p "Introduzca el concepto: " concept
            echo "Realizando la operacion... espere"
                newcredit=$(($credit + $modifycred))
            echo "$newcredit" > contratop-bank/test-account/credit.txt
            echo "$credit : $concept : $tsype : $modifycred : $newcredit" >> contratop-bank/test-account/transactions.txt
            sleep 1
            echo ""
            echo "Actualizando cuenta online de test-account..."
            cd contratop-bank
            git add .
            git commit -m "Account Updated"
            git push
            echo ""
            echo "Transaccion completada"
            break


		
				
        ;;


        "Retirar")

            tstype=Retirada
            read -p "Seleccione el monto a retirar: " modifycred  
            read -p "Introduzca el concepto: " concept
            echo "Realizando la operacion... espere"
                newcredit=$(($credit - $modifycred))
            echo "$newcredit" > contratop-bank/test-account/credit.txt
            echo "$credit : $concept : $tsype : $modifycred : $newcredit" >> contratop-bank/test-account/transactions.txt
            sleep 1
            echo ""
            echo "Actualizando cuenta online de test-account..."
            cd contratop-bank
            git add .
            git commit -m "Account Updated"
            git push
            echo ""
            echo "Transaccion completada"
            break



        ;;


        "Quit")
		clear
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
