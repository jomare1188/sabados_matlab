#!/bin/bash


#grep .jpg lista.txt | xargs touch   ## esto crea las fotos en mi pc

awk '{print "/home/jorge/afro/" $0;}' lista.txt > lista_ok.txt # le agrega el path al nombre de las fotos CAMBIAR!!

mapfile -t LISTA < lista_ok.txt ## METE EN UNA VARIABLE TODOS LOS PATH DE LAS FOTOS

# mueve cada elemeno de la variable a otra posicion (le cambia el nombre)

limite=${#LISTA[@]}
let limite=$limite-1
i=1 
while [ $limite -ge $i ]
do


mv ${LISTA["$i"]} foto_"$i"   # aca le podes poner el nomre que queras a las fotos nuevas


let i=$i+1
done
echo listo

#borra los archivos que creo
#find . -type f -name "foto*" | xargs rm -v   ## esto crea las fotos en mi pc
#rm -v lista_ok.txt





