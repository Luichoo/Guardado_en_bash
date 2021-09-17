#!/bin/bash
#Practica 1 Sistemas Operativos
clear
#	 'mmmmmm    mmmmmm       mm        mmmm   mmmmmmmm   mmmmmm      mmmm      mm                 mmm'    
#	 '##""""#m  ##""""##    ####     ##""""#  """##"""   ""##""    ##""""#    ####               #"##'    
#	 '##    ##  ##    ##    ####    ##"          ##        ##     ##"         ####                 ##'    
#	 '######"   #######    ##  ##   ##           ##        ##     ##         ##  ##                ##'    
#	 '##        ##  "##m   ######   ##m          ##        ##     ##m        ######                ##'    
#	 '##        ##    ##  m##  ##m   ##mmmm#     ##      mm##mm    ##mmmm#  m##  ##m            mmm##mmm' 
#	 '""        ""    """ ""    ""     """"      ""      """"""      """"   ""    ""            """""""'

echo -e "\nLuis Antonio Blanco Conde \nAlejandro Octavio Salas Comparan \nAlejandro Velazquez Peña \nGustavo Contreras Mejia\nGabriel Salom Fernandez\n"
opc=y
opc3=1
echo -e "Ingreso de nuevos datos:\n "
while [ "$opc" = "y" ] || [ "$opc" = "Y" ];
do
opc2=1
	echo "Ingresa Clave Ulsa"
	read clave
	echo "Ingresa Apellido paterno"
	read Apat
	echo "Ingresa Apellido materno"
	read Amat
	echo "Ingresa Nombre"
	read nombre
	echo "Ingresa la Edad"
	read edad
	if [ -f "datos.txt" ]
	then
		while [ $opc3 -eq 1 ];
		do
			read -p "ya existe el archivo datos.txt, desea crear uno nuevo?[y|n]: " opc1
			if [ "$opc1" = "y" ] || [ "$opc1" = "Y" ]
			then
				rm datos.txt
				touch datos.txt
				opc3=0
				if [ -f "datos.txt" ]
					then
						echo "Archivo creado exitosamente"
					else
						echo "Error al crear el archivo"
						exit
					fi
			elif [ "$opc1" = "n" ] || [ "$opc1" = "N" ]
			then

				opc3=0
			else
				echo "Entrada incorrecta"
			fi
		done
	else
		touch datos.txt
	fi
	echo -e "\nDatos guardados en el sistema:\n "
	echo "$clave|$Apat $Amat|$nombre|$edad">>datos.txt
	cat datos.txt
	while [ $opc2 -eq 1 ];
	 do
		read -p "\nDesea añadir otra entrada?[y|n]: " opc
		if [ "$opc" = "y" ] || [ "$opc" = "Y" ] 
		then
			opc2=0
		elif [ "$opc" = "n" ] || [ "$opc" = "N" ]
		then
			opc2=0
		else
			echo "Error, entrada incorrecta"
		fi
	done
done
