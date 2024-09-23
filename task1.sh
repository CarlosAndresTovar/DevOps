#!/bin/bash

dirtocreate=$(pwd)/$1

if [ -d $dirtocreate ]
then
	echo "Carpeta $1 eliminada"
	rm -r $1
	echo "Carpeta $1 creada"
else
	echo "Carpeta $1 creada"
fi
#rm -r $1
mkdir $1
cd $1
for iter in $(seq 0 1 10);
do
    echo "$(date)" > file$iter.txt
done
