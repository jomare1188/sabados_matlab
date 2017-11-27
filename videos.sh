#!/bin/bash

ls | sort -u | grep ftyp > lista_2.txt # lista ftpy
ls | sort -u | grep -v ftyp | grep ".mov$" > lista_1.txt # lista .mov


mapfile -t lista_ftyp < /home/jorge/scripts/lista_2.txt
mapfile -t lista_mov < /home/jorge/scripts/lista_1.txt

echo la longitud de array es ${#lista_ftyp[@]} # o cantidad de videos finales

i=0

while [ $i -lt ${#lista_ftyp[@]}  ] 
do
echo  ciclo "$i"
cat ${lista_ftyp[i]} ${lista_mov[i]} > ftyp_mov_$i.mov; cat ${lista_mov[i]} ${lista_ftyp[i]} > mov_ftyp_$i.mov
let i=$i+1
done
